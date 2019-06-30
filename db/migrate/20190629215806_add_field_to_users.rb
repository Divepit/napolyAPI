class AddFieldToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :field, :integer
  end
end
