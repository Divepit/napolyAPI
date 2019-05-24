class Link < ApplicationRecord
  belongs_to :subject
  belongs_to :semester
  belongs_to :field
  belongs_to :type
end
