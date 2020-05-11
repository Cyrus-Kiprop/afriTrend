class Article < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :votes, dependent: :destroy
  has_and_belongs_to_many :categories

  def self.top_voted_article(num = 1)
    select("articles.*, count(votes.id) AS votes_count")
      .joins(:votes)
      .group("articles.id")
      .order("votes_count DESC")
      .limit(num)
  end

  def self.get_category_based_articles(category)
    joins(:categories).where("categories.name = ?", category)
  end
end
