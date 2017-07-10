class NewsController < ApplicationController
  before_action :set_news, only: [:show, :edit, :update, :destroy]

  def index
    @news = HTTParty.get('https://tfz-backend.herokuapp.com/api/v1/news',
    :headers =>{'Content-Type' => 'application/json'} )
  end

  def show
  end

  def new
    @news = News.new
  end

  def create
    @news = News.new news_params
    if @news.save
      flash[:notice] = 'News article created!'
      redirect_back(fallback_location: new_news_path)
    end
  end

  private

  def set_news
    @news = News.find(params[:id])
  end

  def news_params
    params.require(:news).permit(:title, :content, :file)
  end
end
