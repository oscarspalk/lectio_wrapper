A client wrapper for the popular Lectio app, mostly used by danish students.
## Features
- Fetch your homework

## Future features
- Fetch your calendar
- Grades
- ... lots more

## Usage
Import the package:

```dart
import 'package:lectio_wrapper/lectio_wrapper.dart';
```
Initialize an account object
```dart
var account = Account(<HIGH_SCHOOL_ID>, "<USERNAME>", "<PASSWORD>");
```
Create a `LectioClient` from your account object:
```dart
final LectioClient lectioClient = LectioClient(account);
```
Login:
```dart
await lectioClient.login();
```
And finally load your homework:
```dart
List<Homework> homework = await lectioClient.loadHomework();
```
Full example in examples.
## Additional information

You are welcome to contribute, it's a fairly easy subject.
