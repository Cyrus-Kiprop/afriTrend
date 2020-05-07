class Article < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :votes, dependent: :destroy
  has_and_belongs_to_many :categories
end
