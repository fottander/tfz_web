require 'httparty'

class Rider < ApplicationRecord
  include HTTParty

  base_uri 'https://tfz-backend.herokuapp.com/api/v1'

  def self.find(id)
    get("/riders/#{id}")
  end
end
