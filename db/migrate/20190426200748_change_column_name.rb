class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    def change
      rename_column :links, :url, :linkUrl
    end
  end
end
