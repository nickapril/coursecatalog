class RemoveOfficialIdFromLessons < ActiveRecord::Migration[5.0]
  def change
  	remove_column :lessons, :official_id, :integer
  	remove_column :lessons, :comment, :string
  	remove_column :lessons, :term, :integer
  	add_column :lessons, :requirements, :string
  	add_column :lessons, :independent_study, :boolean
  end
end
