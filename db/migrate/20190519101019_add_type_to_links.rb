class AddTypeToLinks < ActiveRecord::Migration[5.1]
  def change
    add_reference :links, :type, foreign_key: true
  end
end
