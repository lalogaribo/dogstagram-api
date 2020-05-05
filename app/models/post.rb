class Post < ApplicationRecord
  belongs_to :dog
  has_many :comments
  validates :caption, presence: true
  validates :image_url, presence: true
end
