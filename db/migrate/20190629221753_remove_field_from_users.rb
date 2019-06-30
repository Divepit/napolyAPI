class RemoveFieldFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :field

  end
end
