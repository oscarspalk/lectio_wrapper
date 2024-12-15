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

## 0.5.20

* If you are unlucky, teacher contexts sometimes doesn't have images, which fucks it up

## 0.5.21

* Switched to official ISO-week number function as I don't want to have anymore date bugs.

## 0.5.22

* Never got to actually test absence, so apparently it didn't work 100% for not registered absence.

## 0.5.23

* Message content is now fetched as html string, which will allow for markup.

## 0.5.24

* You can now edit by opening an edit with the messages thread controller.

## 0.5.25

* Upgraded `intl` package version

## 0.5.26

* Lectio updated their homepage and links, so now the old login method didn't work.

## 0.5.27

* Cookie manager doesn't support redirects, so I made my own redirect handler.
* This means crud actions messages and events can't be used.

## 0.5.28

* Messaging works again, only private appointments are not fully tested.

## 0.6.0

* Made almost every controller inherit `Controller` type

## 0.6.1

* Made request only follow as GET

## 0.6.2

* Apparently listing the gymnasiums appends Cookies, which aren't good for logging in.

## 0.6.3

* You can add auto re-login now to an account object.

## 0.6.4

* As lectio's autologin isn't actually neccesary, then the new request function is rewritten into a much simpler form.

## 0.6.5

* Lectio updated their absence registrations and assignments meaning the library didn't work.

## 0.6.6

* Added room availability property.
* Added caching for fetching teams.

## 0.6.7

* Auto relogging-in works now.

## 0.6.8

* Opgaver.list() should fetch all assignments for the current year.

## 0.6.9

* Forgot to check if the data received wasn't a String

## 0.6.10

* Updated to the latest version of Lectio

## 0.6.11

* Reference is now included in a Message object.

## 0.6.12

* Message CRUD-actions have been updated

## 0.6.13

* Updated messaging, as they always change that shit
* Deprecated editing messages, I won't make an actual implementation before Lectio stops changing it all the time
* Updated the calendar time parser

## 0.6.14

* The timestamps weren't given 100% correctly

## 0.6.15

* Sometimes the timestamp was entered as the title

## 0.6.16

* More modification to the modul information from Lectio

## 0.6.17

* Messages don't read files as text anymore

## 0.6.18

* Fixed homework listing

## 0.6.19

* Auto relogin should be working now

## 0.6.20

* Autologin is false now by default

## 0.6.21

* Avoids redirect loops

## 0.6.22

* Added a logged in request cookie, which is apparently required now.

## 0.6.23

* Should be able to fetch people now

## 0.6.24

* Added referer to login, otherwise Lectio won't let you login

## 0.6.25

* Referer had to be added multiple places

## 0.6.26

* Referer is now a global part of the requesting

## 0.6.27

* Referer wasn't added quite correctly.

## 0.6.28

* This should fix autologin

## 0.6.29

* added studiekort data fetching
* added studiekort qr code

## 0.6.30

* grade fetching improved, hopefully

## 0.6.31

* auto relogin is perfected now

## 0.6.32

* Forgot we have to rethrow

## 0.6.35

* Removed last 2 versions, as their implementations were overwritten
* Updated from `data-additionalinfo` to `data-tooltip

## 0.6.36

* Added check as some dates were weird in some special cases

## 0.6.37

* Added assignment grade and absence

## 0.6.38

* Previous didn't work exactly

## 0.6.39

* More error prone modul statistics

## 0.6.40

* Getting the calendar for a room didn't work for weeks 1-9

## 0.6.41

* Added serializable Homework

## 0.6.42

* Serializable homework didn't work 100%

## 0.6.43

* It should already be working fine

## 0.6.44

* This should work for nested

## 0.6.45

* More json stuff

## 0.6.46

* Json

## 0.6.47

* Requires to be placed outside

## 0.6.48

* An import was all it took

## 0.6.49

* Made more types json encodable

## 0.6.50

* Grades can apparently be other types than oral or written

## 0.6.51

* Assignment entries can be without documents

## 0.6.52

* You can now fetch exam proof

## 0.6.54

* Study plans can apparently last only a day

## 0.6.55

* Added something purely for debug purposes

## 0.6.56

* Added afventer property to assignments, so we know when they are finished

## 0.6.57

* Made MessageRef a `freezed` class

## 0.6.58

* Upgraded intl package

## 0.6.59

* If a class has multiple rooms it is called "Lokaler"

## 0.6.60

* Get the amount of hosted classes in module statistics.

## 0.6.61

* Made the team and group context getter more error prone.

## 0.6.62

* Some modules were read wrong indicating a wrong time, that is fixed now.

## 0.6.63

* Unilogin should be supported too

## 0.6.64

* We need access to more cookies

## 0.6.65

* The cookies aren't applied..

## 0.6.66

* MitID login works now, not the best solution though

## 0.7.0

* MitID is now part of Lectio++