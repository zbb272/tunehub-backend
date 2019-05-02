class ContributionSerializer < ActiveModel::Serializer
  attributes :id, :user, :project, :notes, :approved
  belongs_to :user
  belongs_to :project
end
