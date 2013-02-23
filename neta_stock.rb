#!/usr/bin/env ruby
#-*- coding: utf-8 -*-
require "tweetstream"
TweetStream.configure do |config|
  config.consumer_key = ENV["CONSUMER_KEY"]
  config.consumer_secret = ENV["CONSUMER_SECRET"]
  config.oauth_token = ENV["OAUTH_TOKEN"]
  config.oauth_token_secret = ENV["OAUTH_SECRET"]
  config.auth_method = :oauth
end

client = TweetStream::Client.new
client.track("@geeoki_hack") do |status|
  neta = "#{status.text.gsub("@geeoki_hack ","")}\n" 
  puts neta
  open("neta.txt","a") do |f|
    f.write(neta)
    Twitter.update("@#{status.user.screen_name} ストックしました。ありがとう" )
  end
end

client.userstream
