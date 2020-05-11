class CategoriesController < ApplicationController
  def index
    @categories = Article.get_category_based_articles(params[:query])
  end
end
