class Semester < ApplicationRecord
  has_many :links
  has_many :subjects
end
