import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:lectio_wrapper/types/message/threads/edit.dart';

OpenedEdit extractContentAndTopic(
    BeautifulSoup soup, Map<String, String> stateData) {
  Bs4Element? contentContainer = soup.find('*',
      id: 's_m_Content_Content_CreateThreadEditMessageContent_TbxNAME_tb');
  Bs4Element? topicContainer =
      soup.find('*', id: 's_m_Content_Content_CreateThreadEditMessageTitle_tb');
  return OpenedEdit(stateData, contentContainer?.text.trim() ?? "",
      topicContainer?.getAttrValue('value') ?? "");
}
