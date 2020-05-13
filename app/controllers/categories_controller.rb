class CategoriesController < ApplicationController
  before_action :set_catagery, only: %i[destroy]
  before_action :authenticate_user!, except: %i[index]

  def index
    @categories = Article.get_category_based_articles(query[:query]).order(created_at: :desc)
  end

  def create
    category = Category.new(category_params)
    if category.save
      flash[:notice] = 'Category successfully created'
    else
      flash[:alert] = 'Internal server error'
    end
    redirect_to user_homepage_path(current_user)
  end

  def destroy
    @category.destroy
    redirect_to user_homepage_path
    flash[:notice] = 'Successfully deleted the category'
  end

  private

  def category_params
    params.require(:category).permit(:name, :priority)
  end

  def query
    params.permit(:query)
  end

  def set_catagery
    @category = Category.find(params[:id])
  end
end
