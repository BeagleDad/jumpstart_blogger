include ArticlesHelper
# frozen_string_literal: true

class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save

    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:id])
    Article.destroy(@article.id)
    redirect_to articles_path
  end

  def show
    @article = Article.find(params[:id])
  end

end
