class Subject < ApplicationRecord
  has_many :links, dependent: :destroy
  has_many :buttons, dependent: :destroy
  belongs_to :field
end
