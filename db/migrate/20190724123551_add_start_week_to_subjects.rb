class AddStartWeekToSubjects < ActiveRecord::Migration[5.1]
  def change
    add_column :subjects, :startWeek, :integer
  end
end
