# This file will seed all of the relevant course information from the given JSON files

require 'json'

Lesson.delete_all
Instructor.delete_all
Subject.delete_all
Enrollment.delete_all
LessonSubject.delete_all

# Seed Instructor data from the JSON file
seed_instructors = JSON.parse(File.read('db/seed_json/instructor.json'))
seed_instructors.each do |i|
  first_name = i['first']
  last_name = i['last']
  email = i['email']
  Instructor.create(first_name: first_name, last_name: last_name, email: email)
end


# Seed Subject data from the JSON file
seed_subjects = JSON.parse(File.read('db/seed_json/subject.json'))
seed_subjects.each do |s|
  name = s['name']
  term = s['term']
  abbreviation = s['abbreviation']
  subject_id = s['id']
  Subject.create(name: name, abbreviation: abbreviation, official_id: subject_id)
end

# Seed course data from the JSON file
seed_courses = JSON.parse(File.read('db/seed_json/course.json'))
seed_courses.each do |c|

  name = c['name']
  code = c['code']
  independent_study = c['independent_study']
  requirements = c['requirements']
  description = c['description']
  lesson = Lesson.create(name: name, code: code, independent_study: independent_study, requirements: requirements, description: description)

  c['subjects'].each do |subjectHash|
	subject_id = subjectHash['id']
	subject = Subject.find_by(official_id: subject_id)
	LessonSubject.create(lesson_id: lesson.id, subject_id: subject.id) if !subject.nil?
  end	
end

