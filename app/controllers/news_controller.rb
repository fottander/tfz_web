class NewsController < ApplicationController
  before_action :set_news, only: [:show]

  def index
    @news = HTTParty.get('https://tfz-backend.herokuapp.com/api/v1/news',
    :headers =>{'Content-Type' => 'application/json'} )
  end

  def show
  end

  private

  def set_news
    @news = News.find(params[:id])
  end
  def show
    @news = News.find(params[:id])
  end
end
