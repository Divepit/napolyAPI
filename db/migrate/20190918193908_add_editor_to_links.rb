class AddEditorToLinks < ActiveRecord::Migration[5.1]
  def change
    add_column :links, :editor, :string
  end
end
