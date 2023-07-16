## 0.0.1

* Beta release
* Fetch your homework

## 0.0.2

* `Account.login()` method which returns `Student` object.
* Fetch your assignments
* Fetch your messages (without the content)
* Fetch your calendar

### 0.0.3

* Added more support for earlier Dart SDKs

### 0.0.4

* Updated homework function, added more reliable link scrape method.

### 0.0.5

* DateTimes weren't fully correct, attempt to correct it.

### 0.0.6

* ListGyms function succesfully implemented.

### 0.0.7

* Day class is in DateTime format instead of string.

### 0.0.8

* Day class returned wrong time, works now.

### 0.0.9

* 12:00 Timestamp was recognized as 00:00, fixed now!

### 0.0.10

* Added weekNum to the Week class

### 0.1.0

* getClasses doesn't fetch everything, so you don't waste precious Lectio API calls.

### 0.1.1

* Updated student class to include basic name and image id.

### 0.1.2

* Added support for default photo

### 0.1.3

* Assignments corrected datetimes

### 0.1.4

* Fetches all assignments now.

### 0.1.5

* Messages get the correct timestamps now and receivers.

### 0.1.6

* Implemented getCalendarEventDetails function.

### 0.1.7

* Changed type of contents on CalendarEventDetails

### 0.1.8

* Added getFile

### 0.1.9

* Added getCookies

### 0.2.0

* Switched to a new structure, added grades and absence.

### 0.2.1

* Can also fetch exams now, doesn't support multiple teachers yet though.

### 0.2.2

* Support for creating, updating and deleting private appointments.

### 0.2.3

* Support for expanding private appointment.

### 0.2.4

* Inbuilt image cache

### 0.2.5

* Changed assignments to being refs, and they can be fetched.

### 0.2.6

* Forgot to add ids to assignments

### 0.2.7

* There were also a field with test files, added that to assignments.

### 0.2.8

* Fixed offset for note

### 0.2.9

* Login with invalid credentials throws error now

### 0.2.10

* Can get message thread and info.

### 0.2.11

* Updated dependencies

### 0.3.0

* Added context for teams, so you can get their actual names now.

### 0.3.1

* Updated context for teams, and added availability to fetch events, which span for several days.

### 0.3.2

* Avoid using context for now, as it is very time consuming making long load times.

### 0.3.3

* Get all students as `Person`
* Fetch student context

### 0.3.4

* Inbuilt context cache

### 0.3.5

* Switched to http library for some operations as requests library seemed odd.

### 0.3.6

* Forgot to remove a debug line.

### 0.3.7

* Removed get team context from grade notes as it is way too time consuming.

### 0.3.8

* Fetches only 2 first digits of grade.

### 0.3.9

* Tried to make the library more error prone.

### 0.3.10

* Create messages, reply to messages and edit messages

### 0.3.11

* Datetime parsing now catches all thrown errors.

### 0.3.12

* Improved list students, so it doesn't fail.

### 0.3.13

* More updates on previous topic

### 0.3.14

* Forgot to remove file writes.

### 0.3.15

* Major improvement on fetching people meta data.

### 0.3.16

* Create message supports meta data entries.

### 0.3.17

* Edited sender name for message refs
* Added indent support for message threads.

### 0.3.18

* Switched name and id on threads.

### 0.3.19

* Added U-ids to context type