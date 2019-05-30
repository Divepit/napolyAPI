class Field < ApplicationRecord
  has_many :links
  has_many :subjects, dependent: :destroy
end
