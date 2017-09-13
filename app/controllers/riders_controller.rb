class RidersController < ApplicationController
  before_action :set_riders, only: [:show]

  def index
    @riders = HTTParty.get('https://tfz-backend.herokuapp.com/api/v1/riders',
    :headers =>{'Content-Type' => 'application/json'} )
  end

  def show
  end

  private

  def set_riders
    @rider = Rider.find(params[:id])
  end
end
