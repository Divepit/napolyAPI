class AddYearToSubjects < ActiveRecord::Migration[5.1]
  def change
    add_column :subjects, :year, :integer
  end
end
