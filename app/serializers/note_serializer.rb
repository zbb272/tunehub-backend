class NoteSerializer < ActiveModel::Serializer
  attributes :id, :x, :y
  belongs_to :contribution
end
