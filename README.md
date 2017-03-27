# README

This application can be used to view the courses, instructors and subjects at a given university. The user can create an account, search for courses and enroll in them.

Some problems I had:
- Two success flash messages appear with a successfull enrollment. See comment in enrollments_controller on line 26
- Could not scaffold a table called Courses becuase it was either already used in my application or it is a prohibited word. I named this table Lessons instead.

What I added/changd for PA3
- User can no longer manually type in the search, courses, or instructor URL to access those pages without logging in
- Eliminated useless results controller
- Added error messages to a failed login
- Put all of the page layouts like the header and footer in the application.html.erb file
- Added Course description seed from the db
- Added javascript to the search page



