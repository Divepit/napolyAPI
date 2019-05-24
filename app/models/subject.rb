class Subject < ApplicationRecord
  has_many :links
  belongs_to :semester
end
