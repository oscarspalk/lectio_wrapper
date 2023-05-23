A client wrapper for the popular Lectio app, mostly used by danish students.
> This library is being developed, which means it isn't fully stable and needs a lot of refactoring. Things are bound to change.

## Usage
A quick example to fetch your homework:
```dart
Account account = Account(<id>, <username>, <password>);
Student? student = await account.login();
var homework = await student!.getHomework();
```

## Features
| Feature             | Implementation | Stable |
|---------------------|----------------|--------|
| getHomework()       | ✅              | ✅      |
| getAssignments()    | ✅              |        |
| getMessages()       | ✅              |        |
| getCalendar()       | ✅              | ✅      |
| getImage()          | ✅              | ✅      |
| getMessageContent() |                |        |
| getAbsence()        |                |        |
| getGrades()         |                |        |
| listGyms() | ✅||

## Additional information

You are welcome to contribute, it's a fairly easy subject.
