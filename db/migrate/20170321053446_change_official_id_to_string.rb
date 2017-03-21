class ChangeOfficialIdToString < ActiveRecord::Migration[5.0]
  def change
  	remove_column :subjects, :official_id, :integer
  	add_column :subjects, :official_id, :string
  end
end
