class HomeController < ApplicationController

  require 'twitter'
  require 'time'

  def top
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV['TW_CONSUMER_KEY']
      config.consumer_secret     = ENV['TW_CONSUMER_SECRET']
      config.access_token        = ENV['TW_ACCESS_TOKEN']
      config.access_token_secret = ENV['TW_ACCESS_TOKEN_SECRET']
    end
    @client = @client.user_timeline.first(20)
    @medias = Instagram.user_recent_media
    @medias.each do |medias|
      medias[:created_at] = Time.at(medias[:created_time].to_i)
    end

    @posts = (@client + @medias).sort_by {|post| post.created_at}.reverse!
  end
end
