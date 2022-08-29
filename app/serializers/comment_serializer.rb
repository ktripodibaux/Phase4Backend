class CommentSerializer < ActiveModel::Serializer
  attributes :id, :User, :content
end
