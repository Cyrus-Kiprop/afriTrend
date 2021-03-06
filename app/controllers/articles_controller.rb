class ArticlesController < ApplicationController
  before_action :set_article, only: %i[show edit update destroy]
  before_action :authenticate_user!, except: %i[index show]

  # GET /articles
  # GET /articles.json
  def index
    @articles = Article.all_articles
    best_article = Article.top_voted_article(1).first
    @top_article = best_article.nil? ? @articles.first : best_article
  end

  # GET /articles/1
  # GET /articles/1.json
  def show; end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # GET /articles/1/edit
  def edit; end

  # POST /articles
  # POST /articles.json
  def create
    cat_id = article_params[:category_ids][1].to_i
    @article = current_user.articles.build(article_params)

    flash.alert = article_params[:image].blank? ? 'Please upload a image' : ''

    respond_to do |format|
      if @article.save
        @article.categories << Category.find_by_id(cat_id)
        format.html { redirect_to @article, notice: 'Article was successfully created.' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'Article was successfully updated.' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    if @article
      @article.destroy
      redirect_to articles_url, notice: 'Article was successfully destroyed.'
    else
      redirect_to articles_path, alert: 'Error while destroying the article'
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_article
    @article = Article.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def article_params
    params.require(:article).permit(:user_id, :title, :content, :image, category_ids: [])
  end
end
