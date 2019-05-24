class AddSemesterToLinks < ActiveRecord::Migration[5.1]
  def change
    add_reference :links, :semester, foreign_key: true
  end
end
