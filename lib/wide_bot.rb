# frozen_string_literal: true

require 'twitter'
require 'dotenv'
require_relative "wide_bot/version"

module WideBot

  Dotenv.load
  # Dotenv.load File.expand_path('../.env', __FILE__).to_s
  # puts File.expand_path('../.env', __FILE__).

  client = Twitter::REST::Client.new do |config|
    config.consumer_key = ENV["CONSUMER_KEY"]
    config.consumer_secret = ENV["CONSUMER_SECRET"]
    config.access_token = ENV["ACCESS_TOKEN"]
    config.access_token_secret = ENV["ACCESS_TOKEN_SECRET"]
  end

  client.update("test")
end
