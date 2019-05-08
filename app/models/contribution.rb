class Contribution < ApplicationRecord
  belongs_to :user
  belongs_to :project
  has_many :notes
  accepts_nested_attributes_for :notes
end
