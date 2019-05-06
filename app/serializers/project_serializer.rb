class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :contributions, :latest_contribution, :user
  has_many :contributions
  belongs_to :user
end
