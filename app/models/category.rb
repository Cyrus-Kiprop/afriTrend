class Category < ApplicationRecord
  validates :name, presence: true
  validates :priority, presence: true, numericality: { only_integer: true }
  has_and_belongs_to_many :articles
end
