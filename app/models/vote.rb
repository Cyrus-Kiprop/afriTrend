class Vote < ApplicationRecord
  validates :user_id, presence: true, numericality: { only_integer: true }
  validates :article_id, presence: true, numericality: { only_integer: true }

  belongs_to :user
  belongs_to :article
end
