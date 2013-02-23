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

Twitter.configure do |config|
   config.consumer_key = ENV["CONSUMER_KEY"]
   config.consumer_secret = ENV["CONSUMER_SECRET"]
   config.oauth_token = ENV["OAUTH_TOKEN"]
   config.oauth_token_secret = ENV["OAUTH_SECRET"]
end

client = TweetStream::Client.new
client.track("@geeoki_hack") do |status|
  puts status.text
  neta = "#{status.text.gsub("@geeoki_hack ","")}" 
  puts neta
  word = neta + "\n"
  open("neta.txt", "a") {|f| f.write word}
  Twitter.update("ネタワード:#{neta} をストックしました #geeoknt" )
end

client.userstream
