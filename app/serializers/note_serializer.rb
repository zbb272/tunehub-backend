class NoteSerializer < ActiveModel::Serializer
  attributes :id, :x, :y, :frequency, :selected, :bc
  belongs_to :contribution
end
