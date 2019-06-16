class Field < ApplicationRecord
  has_many :subjects, dependent: :destroy
end
