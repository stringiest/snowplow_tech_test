# frozen_string_literal: true

require 'snowplow-tracker'

class ArticlesController < ApplicationController
  before_action :find_article, only: %i[edit update destroy show]

  def index
    @articles = Article.all
    t1 = SnowplowTracker::Tracker.new(SnowplowTracker::AsyncEmitter.new('localhost:9090'), nil, 't1')
    t1.set_platform('cnsl')
    t1.track_page_view('http://localhost:3000')
  end

  def show
    t2 = SnowplowTracker::Tracker.new(SnowplowTracker::AsyncEmitter.new('localhost:9090'), nil, 't2')
    t2.set_platform('cnsl')
    t2.track_page_view('http://localhost:3000/articles/1')
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to articles_url
    else
      render :new
    end
  end

  def edit; end

  def update
    if @article.update(article_params)
      redirect_to articles_url
    else
      render :edit
    end
  end

  def destroy
    @article.destroy

    redirect_to root_path
  end

  private

  def find_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :body)
  end
end
