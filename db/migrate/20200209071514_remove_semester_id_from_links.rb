class RemoveSemesterIdFromLinks < ActiveRecord::Migration[5.1]
  def change
    remove_column :links, :semester_id, :string
  end
end
