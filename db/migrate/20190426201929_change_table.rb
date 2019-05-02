class ChangeTable < ActiveRecord::Migration[5.1]

    def change
      rename_column :links, :url, :linkUrl
    end

end
