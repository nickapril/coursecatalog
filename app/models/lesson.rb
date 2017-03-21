class Lesson < ApplicationRecord

  has_many :enrollments
  has_many :users, through: :enrollments

  has_many :lesson_subjects
  has_many :subjects, through: :lesson_subjects

  def self.search(search)
	Lesson.where(Lesson.arel_table[:name].matches("%#{search}%"))
	#where("name ILIKE ?", "%#{search}%")
  end

end
