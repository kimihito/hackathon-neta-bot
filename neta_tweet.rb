#!/usr/bin/env ruby
#-*- coding: utf-8 -*-
require 'twitter'

Twitter.configure do |config|
  config.consumer_key = "kSgU7H98OaQEz3nLF2q2A" 
  config.consumer_secret = "u9wsFag4aKTY0vXshid2wryTPqeNeoR7LHPiXQCDU"
  config.oauth_token = "1210405740-IAWVtONKBJ2jawDsYMEgu7CSaf5srVKHPr5Zwz0"
  config.oauth_token_secret = "tGqq4BmTwV9Urzh1v7mdKqqbtNT6MrfUHkgpspmUa0"
  # config.consumer_key = ENV['CONSUMER_KEY']
  # config.consumer_secret = ENV["CONSUMER_SECRET"]
  # config.oauth_token = ENV["OAUTH_TOKEN"]
  # config.oauth_token_secret = ENV["OAUTH_SECRET"]
end 

netas = open("neta.txt").readlines.sample(2)

Twitter.update("#{netas[0]}と#{netas[1]}がテーマです!!!!") 

