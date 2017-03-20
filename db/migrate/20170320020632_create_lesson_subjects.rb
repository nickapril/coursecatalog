class CreateLessonSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :lesson_subjects do |t|
      t.integer :lesson_id
      t.integer :subject_id

      t.timestamps
    end
  end
end
