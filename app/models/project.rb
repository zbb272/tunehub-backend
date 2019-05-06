class Project < ApplicationRecord
  belongs_to :user
  has_many :contributions
  accepts_nested_attributes_for :contributions
end
