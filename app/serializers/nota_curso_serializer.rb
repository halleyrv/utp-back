class NotaCursoSerializer < ActiveModel::Serializer
  attributes :id, :nota
  has_one :user
end
