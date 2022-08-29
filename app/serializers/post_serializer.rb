class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content,:User, :created_at, :comments
end
