class AddFieldToLinks < ActiveRecord::Migration[5.1]
  def change
    add_reference :links, :field, foreign_key: true
  end
end
