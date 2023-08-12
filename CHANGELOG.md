## 0.0.1

* Beta release
* Fetch your homework

## 0.0.2

* `Account.login(autologin:false)` method which returns `Student` object.
* Fetch your assignments
* Fetch your messages (without the content)
* Fetch your calendar

## 0.0.3

* Added more support for earlier Dart SDKs

## 0.0.4

* Updated homework function, added more reliable link scrape method.

## 0.0.5

* DateTimes weren't fully correct, attempt to correct it.

## 0.0.6

* ListGyms function succesfully implemented.

## 0.0.7

* Day class is in DateTime format instead of string.

## 0.0.8

* Day class returned wrong time, works now.

## 0.0.9

* 12:00 Timestamp was recognized as 00:00, fixed now!

## 0.0.10

* Added weekNum to the Week class

## 0.1.0

* getClasses doesn't fetch everything, so you don't waste precious Lectio API calls.

## 0.1.1

* Updated student class to include basic name and image id.

## 0.1.2

* Added support for default photo

## 0.1.3

* Assignments corrected datetimes

## 0.1.4

* Fetches all assignments now.

## 0.1.5

* Messages get the correct timestamps now and receivers.

## 0.1.6

* Implemented getCalendarEventDetails function.

## 0.1.7

* Changed type of contents on CalendarEventDetails

## 0.1.8

* Added getFile

## 0.1.9

* Added getCookies

## 0.2.0

* Switched to a new structure, added grades and absence.

## 0.2.1

* Can also fetch exams now, doesn't support multiple teachers yet though.

## 0.2.2

* Support for creating, updating and deleting private appointments.

## 0.2.3

* Support for expanding private appointment.

## 0.2.4

* Inbuilt image cache

## 0.2.5

* Changed assignments to being refs, and they can be fetched.

## 0.2.6

* Forgot to add ids to assignments

## 0.2.7

* There were also a field with test files, added that to assignments.

## 0.2.8

* Fixed offset for note

## 0.2.9

* Login with invalid credentials throws error now

## 0.2.10

* Can get message thread and info.

## 0.2.11

* Updated dependencies

## 0.3.0

* Added context for teams, so you can get their actual names now.

## 0.3.1

* Updated context for teams, and added availability to fetch events, which span for several days.

## 0.3.2

* Avoid using context for now, as it is very time consuming making long load times.

## 0.3.3

* Get all students as `Person`
* Fetch student context

## 0.3.4

* Inbuilt context cache

## 0.3.5

* Switched to http library for some operations as requests library seemed odd.

## 0.3.6

* Forgot to remove a debug line.

## 0.3.7

* Removed get team context from grade notes as it is way too time consuming.

## 0.3.8

* Fetches only 2 first digits of grade.

## 0.3.9

* Tried to make the library more error prone.

## 0.3.10

* Create messages, reply to messages and edit messages

## 0.3.11

* Datetime parsing now catches all thrown errors.

## 0.3.12

* Improved list students, so it doesn't fail.

## 0.3.13

* More updates on previous topic

## 0.3.14

* Forgot to remove file writes.

## 0.3.15

* Major improvement on fetching people meta data.

## 0.3.16

* Create message supports meta data entries.

## 0.3.17

* Edited sender name for message refs
* Added indent support for message threads.

## 0.3.18

* Switched name and id on threads.

## 0.3.19

* Added U-ids to context type

## 0.4.0

* Nullable cause, meaning it isn't filled out yet.

## 0.4.1

* Made as pure Dart-package making it suitable for any type of application.

## 0.4.4

* Overwrote last changes.

## 0.4.5

* Ability to fetch all students and teachers with images.

## 0.4.6

* Flutter sdk is now required again, will make it up later.

## 0.4.7

* Added study plan
* Added rooms
* Get room schema

## 0.4.8

* Fixed Person class swapped id and name.

## 0.4.9

* Removed person class and made `MetaDataEntry` with named parameters.

## 0.4.10

* Fetch all personal teams.
* Fetch module statistics about teams.

## 0.4.11

* Updated expand event, sometimes the title doesn't have a span child.

## 0.4.12

* Expand event didn't get all details.

## 0.4.13

* Still more changes to expand event details. It is a bit confusing with rich text.

## 0.4.14

* What if links also has added notes? Now it fetches that too.

## 0.4.15

* Assignment files are now fetched with a relative link instead of an id.

## 0.4.16

* Switched most things, not classes which inherit to freezed models, so they will be easier to json etc.

## 0.4.17

* Forgot to add with to some freezed classes.

## 0.4.18

* Freezed forgot to add .g.dart files.

## 0.4.19

* Some logic had to be changed as you cannot modify freezed classes.

## 0.4.20

* So in theory, you could login each 30 days with the actual login, and autologin key everyother.

## 0.4.21

* Create messages is kind of unstable, but lets try.

## 0.5.0

* Switched completely to dio

## 0.5.1

* Get image now returns an image provider, which should make it a lot faster.

## 0.5.2

* Image provider adjustments

## 0.5.3

* getImage shouldn't be async

## 0.5.4

* Listing all students also provides their classes now.

## 0.5.5

* Listing students as a stream, which will make the delay 2 seconds
* Autologin key expires after 30 days instead of 2 hours.

## 0.5.6

* Ability to list terms, and switch between them.

## 0.5.7

* Fetches all teachers too, and you can get their calendar

## 0.5.8

* File fetching worked a bit odd

## 0.5.9

* Finally been able to update homework functions, now they can fetch text etc. in a good way.

## 0.5.10

* Added info to each klasse member, so they don't look empty

## 0.5.11

* This should only apply to classes

## 0.5.12

* Added a wide variety of contents, which means content should be displayed nicely now.

## 0.5.13

* Get image supports not only ids and full links.

## 0.5.14

* Improvement with content parsing.

## 0.5.15

* Added html content string, if needed

## 0.5.16

* Added module annotation for homework.

## 0.5.17

* Week events include teacher objects with ids and team objects with ids
* Week object includes modul ranges, so it is possible to split events into modules

## 0.5.18

* Teacher context is a student context

## 0.5.19

* Names can also be extracted from student context