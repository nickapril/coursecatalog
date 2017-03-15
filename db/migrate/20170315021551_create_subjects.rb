class CreateSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :subjects do |t|
      t.string :name
      t.date :date
      t.integer :official_id
      t.integer :term
      t.string :abbreviation
      t.string :comment

      t.timestamps
    end
  end
end
