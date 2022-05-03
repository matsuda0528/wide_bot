# frozen_string_literal: true

#HACK: Use auto_load
require_relative "wide_bot/version"
require_relative "wide_bot/twitter_bot"
require_relative "wide_bot/netkeiba_fetcher"
require_relative "wide_bot/netkeiba_html_parser"
require_relative "wide_bot/keiba_master"
require_relative "wide_bot/tweet_formatter"

module WideBot
end
