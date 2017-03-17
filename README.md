# README

This application can be used to view the courses, instructors and subjects at a given university. The user can create an account to view his/her information.

Some problems I had:
- All subject ID's appear the same from the JSON file
- No error messages for a failed sign in
- No information about users yet
- Could not scaffold a table called Courses becuase it was either already used in my application or it is a prohibited word. I named this table Lessons instead.

Some Questions
- Is it possible to use the shared error_messages for the sign in page? Right now the sign in page cannot access a users error messages becuase it is being rendered in the sessions view folder.

- What should I use to fill in the User profile page?