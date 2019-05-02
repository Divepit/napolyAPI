class CreateSemesters < ActiveRecord::Migration[5.1]
  def change
    create_table :semesters do |t|
      t.integer :semesterHalf
      t.integer :semesterYear

      t.timestamps
    end
  end
end
