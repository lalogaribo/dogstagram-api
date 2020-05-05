class Dog < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: {minimum: 4, maximum: 50}
  validates :breed, presence: true
  has_many :posts
end
