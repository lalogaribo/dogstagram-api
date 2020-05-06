class PostSerializer < ActiveModel::Serializer
  attributes :id, :likes, :image_url, :caption
  belongs_to :dog
  has_many :comments
end
