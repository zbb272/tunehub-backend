class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :contributions
  has_many :contributions
  belongs_to :user
end
