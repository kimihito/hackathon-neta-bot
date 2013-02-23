#!/usr/bin/env ruby
#-*- coding: utf-8 -*-
require 'twitter'

Twitter.configure do |config|
  config.consumer_key = ENV["CONSUMER_KEY"]
  config.consumer_secret = ENV["CONSUMER_SECRET"]
  config.oauth_token = ENV["OAUTH_TOKEN"]
  config.oauth_token_secret = ENV["OAUTH_SECRET"]
end 

netas = open("neta.txt").readlines

Twitter.update(netas.sample(2))
