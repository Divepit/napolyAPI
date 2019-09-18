class AddCreatorToLinks < ActiveRecord::Migration[5.1]
  def change
    add_column :links, :creator, :string
  end
end
