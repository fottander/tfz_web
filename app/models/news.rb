require 'httparty'

class News < ApplicationRecord
  include HTTParty

  base_uri 'https://tfz-backend.herokuapp.com/api/v1'

  def self.find(id)
    get("/news/#{id}")
  end
end
