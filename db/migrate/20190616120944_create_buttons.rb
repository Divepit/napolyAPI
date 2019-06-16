class CreateButtons < ActiveRecord::Migration[5.1]
  def change
    create_table :buttons do |t|
      t.string :buttonLabel
      t.string :buttonUrl
      t.references :subject, foreign_key: true

      t.timestamps
    end
  end
end
