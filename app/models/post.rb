class Post < ApplicationRecord
  belongs_to :dog
  validates :caption, presence: true
  validates :image_url, presence: true
end
