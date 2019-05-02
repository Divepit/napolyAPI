class AddSubjectToLink < ActiveRecord::Migration[5.1]
  def change
    add_reference :links, :subject, foreign_key: true
  end
end
