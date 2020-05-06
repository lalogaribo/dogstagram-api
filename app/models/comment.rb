class Comment < ApplicationRecord
  belongs_to :post
  validates :content, presence: true, length: {minimum: 1, maximum: 100}
end
