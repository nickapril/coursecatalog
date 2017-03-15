class CreateInstructors < ActiveRecord::Migration[5.0]
  def change
    create_table :instructors do |t|
      t.string :first_name
      t.string :last_name
      t.integer :official_id
      t.string :comment
      t.string :email

      t.timestamps
    end
  end
end
