class PostSerializer < ActiveModel::Serializer
  attributes :likes, :image_url, :caption
  belongs_to :dog
end
