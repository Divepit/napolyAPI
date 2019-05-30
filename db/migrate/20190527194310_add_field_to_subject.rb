class AddFieldToSubject < ActiveRecord::Migration[5.1]
  def change
    add_reference :subjects, :field, foreign_key: true
  end
end
