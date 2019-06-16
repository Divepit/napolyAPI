class CreateInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :infos do |t|
      t.string :infoTitle
      t.text :infoText
      t.references :subject, foreign_key: true

      t.timestamps
    end
  end
end
