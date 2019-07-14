class Field < ApplicationRecord
  has_many :subjects, dependent: :destroy
  has_many :users

end
