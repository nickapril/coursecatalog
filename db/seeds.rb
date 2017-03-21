# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'

Lesson.delete_all
Instructor.delete_all
Subject.delete_all
Enrollment.delete_all

# Lesson.create(name: "Algebra", comment: "Usually offered every spring", official_id: 1, term: 1, code: "cosi166", description: "Introduction to basic algebra")
# Lesson.create(name: "Programming in Java", comment: "Usually offered every fall", official_id: 2, term: 1, code: "cosi11a", description: "Introduction to basic programming in Java")

# Instructor.create(official_id: 1, first_name: "Mark", last_name: "Brandanowitz", comment: "Teaches Computer Science", email: "mark@example.edu")
# Instructor.create(official_id: 2, first_name: "Magnet", last_name: "Cermola", comment: "Teaches Mathematics", email: "mag@example.edu")

# Subject.create(name: "Computer Science", official_id: 1, term: 1, abbreviation: "cosi", comment: "Department of Computer Science")
# Subject.create(name: "Mathematics", official_id: 2, term: 1, abbreviation: "math", comment: "Department of Mathematics")

# User.create(name: "Nick April", email: "nick@brandeis.edu", password:"foobar", password_confirmation: "foobar")
# User.create(name: "Adi Berkowitz", email: "adi@brandeis.edu", password:"foobar", password_confirmation: "foobar")

seed_instructors = JSON.parse(File.read('db/seed_json/instructor.json'))
seed_instructors.each do |i|
	first_name = i['first']
	last_name = i['last']
	email = i['email']
	Instructor.create(first_name: first_name, last_name: last_name, email: email)
end


seed_subjects = JSON.parse(File.read('db/seed_json/subject.json'))
seed_subjects.each do |s|
	name = s['name']
	term = s['term']
	abbreviation = s['abbreviation']
	subject_id = s['id']
	Subject.create(name: name, abbreviation: abbreviation, official_id: subject_id)
end


seed_courses = JSON.parse(File.read('db/seed_json/course.json'))
seed_courses.each do |c|

  name = c['name']
  code = c['code']
  independent_study = c['independent_study']
  requirements = c['requirements']
  lesson = Lesson.create(name: name, code: code, independent_study: independent_study, requirements: requirements)

  c['subjects'].each do |subjectHash|
	subject_id = subjectHash['id']
	subject = Subject.find_by(official_id: subject_id)
	LessonSubject.create(lesson_id: lesson.id, subject_id: subject.id) if !subject.nil?
  end	
end



# User.create(id: 1, name: "Nick April", email: "nick@brandeis.edu", password:"foobar", password_confirmation: "foobar")
# # 2nd user
# User.create(id: 2, name: "Adi Berkowitz", email: "adi@brandeis.edu", password:"foobar", password_confirmation: "foobar")

# # create fake enrollments
# Enrollment.create(user_id: 1, lesson_id: 2)
# Enrollment.create(user_id: 2, lesson_id: 2)
# Enrollment.create(user_id: 1, lesson_id: 3)
# Enrollment.create(user_id: 2, lesson_id: 3)
