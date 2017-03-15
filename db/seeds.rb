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

# Lesson.create(name: "Algebra", comment: "Usually offered every spring", official_id: 1, term: 1, code: "cosi166", description: "Introduction to basic algebra")
# Lesson.create(name: "Programming in Java", comment: "Usually offered every fall", official_id: 2, term: 1, code: "cosi11a", description: "Introduction to basic programming in Java")

# Instructor.create(official_id: 1, first_name: "Mark", last_name: "Brandanowitz", comment: "Teaches Computer Science", email: "mark@example.edu")
# Instructor.create(official_id: 2, first_name: "Magnet", last_name: "Cermola", comment: "Teaches Mathematics", email: "mag@example.edu")

# Subject.create(name: "Computer Science", official_id: 1, term: 1, abbreviation: "cosi", comment: "Department of Computer Science")
# Subject.create(name: "Mathematics", official_id: 2, term: 1, abbreviation: "math", comment: "Department of Mathematics")

# User.create(name: "Nick April", email: "nick@brandeis.edu", password:"foobar", password_confirmation: "foobar")
# User.create(name: "Adi Berkowitz", email: "adi@brandeis.edu", password:"foobar", password_confirmation: "foobar")


seed_courses = JSON.parse(File.read('db/seed_json/course.json'))
seed_courses.each do |c|
  Lesson.create(name: c["name"], official_id: c["id"], code: c["code"], comment: c["comment"], term: c["term"])
end

seed_instructors = JSON.parse(File.read('db/seed_json/instructor.json'))
seed_instructors.each do |i|
	Instructor.create(first_name: i["first"], last_name: i["last"], email: i["email"], comment: i["comment"], official_id: i["id"])
end

seed_subjects = JSON.parse(File.read('db/seed_json/subject.json'))
seed_subjects.each do |s|
	Subject.create(name: s["name"], term: s["term"], abbreviation: s["abbreviation"], comment: s["comment"], official_id: s["id"])
end

