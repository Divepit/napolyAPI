class AddSemesterToSubjects < ActiveRecord::Migration[5.1]
  def change
    add_reference :subjects, :semester, foreign_key: true
  end
end
