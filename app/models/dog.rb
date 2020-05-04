class Dog < ApplicationRecord
  validates :name, presence: true, uniqueness: true,
                    length: {minimum: 5, maximum: 50}
  validates :breed, presence: true
  has_many :posts
end
