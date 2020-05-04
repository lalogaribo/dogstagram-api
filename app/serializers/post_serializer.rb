class PostSerializer
  include FastJsonapi::ObjectSerializer
  attributes :likes, :image_url, :caption
end
