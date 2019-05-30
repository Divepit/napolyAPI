class Subject < ApplicationRecord
  has_many :links, dependent: :destroy
  belongs_to :field
end
