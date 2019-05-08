class ContributionSerializer < ActiveModel::Serializer
  attributes :id, :user, :project, :notes, :approved, :pending, :message
  belongs_to :user
  belongs_to :project
  has_many :notes
end
