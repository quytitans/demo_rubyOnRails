class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      flash[:success] = "Register success"
      redirect_to @article
    else
      flash[:danger] = "Register failed"
      render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      flash[:success] = "Update success"
      redirect_to @article
    else
      flash[:danger] = "Update failed"
      render :edit
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    flash[:success] = "Delete success"
    redirect_to root_path
  end

  private
  def article_params
    params.require(:article).permit(:title, :body)
  end
end