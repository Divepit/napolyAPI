class AddFieldToUsers < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :field, foreign_key: true
  end
end
