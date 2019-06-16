class Semester < ApplicationRecord
  has_many :subjects, dependent: :destroy
end
