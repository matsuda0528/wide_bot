require 'twitter'
require 'dotenv'

module WideBot
  class TwitterBot
    def initialize
      Dotenv.load
      # FIXME: .env file is required in execution path.
      # Fix to allow .env file references independent of execution path

      @client = Twitter::REST::Client.new do |config|
        config.consumer_key = ENV["CONSUMER_KEY"]
        config.consumer_secret = ENV["CONSUMER_SECRET"]
        config.access_token = ENV["ACCESS_TOKEN"]
        config.access_token_secret = ENV["ACCESS_TOKEN_SECRET"]
      end
    end

    def say(say_text)
      @client.update(say_text)
    end
  end
end

