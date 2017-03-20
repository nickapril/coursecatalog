class Lesson < ApplicationRecord
  serialize :subjects, JSON

  has_many :enrollments
  has_many :users, through: :enrollments

  has_many :lesson_subjects
  has_many :subjects, through: :lesson_subjects

  def self.search(query_hash)
  	result = all
  	result = result.where("name like ?", "%#{query_hash[:name]}%") if query_hash[:name]
  	result = result.where("subject like ?", "%#{query_hash[:subject]}%") if query_hash[:subject]
  	result
  end

end

#	where("name ILIKE ?", "%#{search}%") 
