class CategoriesController < ApplicationController
  before_action :set_catagery, only: %i[destroy]
  before_action :authenticate_user!, except: %i[index]

  def index
    @categories = Article.get_category_based_articles(query[:query]).order(created_at: :desc)
  end

  def create
    category = Category.new(category_params)
    if category.save
      redirect_to user_homepage_path
      flash[:notice] = 'Category successfully created'
    else
      redirect_to user_homepage_path
      flash[:alert] = 'Internal server error'
    end
  end

  def destroy
    @category.destroy
    redirect_to user_homepage_path
    flash[:notice] = 'Successfully deleted the category'
  end

  private

  def category_params
    category = params.require(:category).permit(:name, :priority)
  end

  def query
    query = params.permit(:query)
  end

  def set_catagery
    @category = Category.find(params[:id])
  end
end
