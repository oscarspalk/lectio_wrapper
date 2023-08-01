A client wrapper for the popular Lectio app, mostly used by danish students.
> This library is being developed, which means it isn't fully stable and needs a lot of refactoring. Things are bound to change.

## Usage
Login by making an ``Account`` object, and calling ``.login(autologin:false)``, which returns a ``Student`` object. Student object has listed features to call:

| Feature             | Implementation |
|---------------------|----------------|
| homework | ✅              | 
| assignments   | ✅              | 
| messages      | ✅              | 
| weeks       | ✅              | 
| grades | ✅|
| absence | ✅|
| absence.registrations | ✅|
| grades.notes | ✅|
| classes | ✅|
| events | ✅|
| gyms | ✅|
Currently only ``absence`` supports updating data.

More features will be added.

## Additional information

You are welcome to contribute, it's a fairly easy subject.
