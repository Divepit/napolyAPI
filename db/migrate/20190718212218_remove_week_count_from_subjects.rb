class RemoveWeekCountFromSubjects < ActiveRecord::Migration[5.1]
  def change
    remove_column :subjects, :weekCount
  end
end
