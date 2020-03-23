class RemoveFieldIdFromLinks < ActiveRecord::Migration[5.1]
  def change
    remove_column :links, :field_id, :string
  end
end
