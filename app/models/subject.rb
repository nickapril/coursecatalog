class Subject < ApplicationRecord
  has_many :lesson_subjects
  has_many :lessons, through: :lesson_subjects
end
