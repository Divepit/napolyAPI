class AddWeekToLinks < ActiveRecord::Migration[5.1]
  def change
    add_column :links, :linkWeek, :integer
  end
end
