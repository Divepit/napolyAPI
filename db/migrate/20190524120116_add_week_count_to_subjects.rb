class AddWeekCountToSubjects < ActiveRecord::Migration[5.1]
  def change
    add_column :subjects, :weekCount, :integer
  end
end
