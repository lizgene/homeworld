class HomeController < ApplicationController
  def index
    @user = HTTParty.get("https://api.instagram.com/v1/users/self?client_id=#{ENV['CLIENT_ID']}&access_token=#{ENV['ACCESS_TOKEN']}")['data']

    @media = HTTParty.get("https://api.instagram.com/v1/users/self/media/recent?client_id=#{ENV['CLIENT_ID']}&access_token=#{ENV['ACCESS_TOKEN']}")['data']
  end
end
