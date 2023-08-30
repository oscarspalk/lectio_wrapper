import 'package:dotenv/dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lectio_wrapper/lectio_wrapper.dart';
import 'package:lectio_wrapper/types/message/message.dart';
import 'package:lectio_wrapper/types/message/meta/meta.dart';
import 'package:lectio_wrapper/types/message/threads/edit.dart';

void main() {
  var env = DotEnv()..load();

  Account account =
      Account(int.parse(env['GYM_ID']!), env['USERNAME']!, env['PASSWORD']!);
  Student? student;
  setUp(() async => {student = await account.login(autologin: false)});

  test('get message', () async {
    var messages = await student!.messages
        .get(MessageRef("61197657640", DateTime.now(), "", ""));
    expect(messages, isNotNull);
  });

  test('test message crud flow', () async {
    var messages = await student!.messages.list();
    expect(messages, anyOf(isNotEmpty, isEmpty));
    const testName = "lpp2023";
    const testContent = "what";
    const test2Content = "what man!?";
    const updatedText = "pas på den knaldrøde gummibåd";
    const updatedTopic = "birthe kjær";
    // create new
    await student!.messages.create(CreateMessage(testName, testContent, true, [
      MetaDataEntry(name: "Oscar Gaardsted Spalk (2bx 12)", id: "S54299107744")
    ]));
    var messagesNow = await student!.messages.list();
    MessageRef? newMessage;
    for (var message in messagesNow) {
      if (message.topic == testName) {
        newMessage = message;
      }
    }
    expect(newMessage, isNotNull);
    var messageContent = await student!.messages.get(newMessage!);
    expect(messageContent.thread.length, 1);
    expect(messageContent.thread[0].content, testContent);
    await student!.messages.reply(Reply(messageContent.thread[0],
        "Re: $testName", messageContent, test2Content));
    var newMessageContent = await student!.messages.get(newMessage);
    expect(newMessageContent.thread.length, 2);
    expect(newMessageContent.thread[1].topic, "Re: $testName");
    expect(newMessageContent.thread[1].content, test2Content);
    var openedEdit = await student!.messages.threads
        .openEdit(newMessageContent.thread[0], newMessageContent);
    await student!.messages.threads.edit(
        Edit(
            newMessageContent.thread[0]
              ..content = updatedText
              ..topic = updatedTopic,
            newMessageContent),
        openedEdit.stateData);
    var newMessageContent2 = await student!.messages.get(newMessage);
    expect(newMessageContent2.thread[0].content, contains(updatedText));
    expect(newMessageContent2.thread.length, 2);
    await student!.messages.delete(newMessageContent2);
    var updatedList = await student!.messages.list();
    var index =
        updatedList.indexWhere((element) => element.topic == updatedTopic);
    expect(index, -1);
  });
}
