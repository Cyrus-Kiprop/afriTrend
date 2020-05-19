class Article < ApplicationRecord
  belongs_to :user

  has_many :votes, dependent: :destroy
  has_and_belongs_to_many :categories
  has_one_attached :image, dependent: :destroy


  validates :image, presence: true
  validates :categories, presence: true
  validates :user_id, presence: true, numericality: { only_integer: true }
  validates :title, presence: true, length: { maximum: 140 }
  validates :content, presence: true, length: { minimum: 25 }


def self.all_articles
  with_attached_image.includes( :votes, :categories, :user ).order(created_at: :desc)
end



  def self.top_voted_article(num = 1)
    select('articles.*, count(votes.id) AS votes_count')
      .joins(:votes)
      .group('articles.id')
      .order('votes_count DESC')
      .limit(num)
  end

  def self.get_category_based_articles(category)
    with_attached_image.joins(:categories).where('categories.name = ?', category)
  end
end
