class CreateLessons < ActiveRecord::Migration[5.0]
  def change
    create_table :lessons do |t|
      t.string :name
      t.integer :official_id
      t.string :comment
      t.integer :term
      t.string :code
      t.string :description

      t.timestamps
    end
  end
end
