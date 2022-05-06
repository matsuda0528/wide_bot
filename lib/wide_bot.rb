# frozen_string_literal: true

module WideBot
  Dir.glob('**/*', File::FNM_DOTMATCH, base: File.dirname(__FILE__)).each do |file|
    require_relative file if file.match?(/.rb$/)
  end
  # widebot = File.dirname(__FILE__) + '/widebot'
  # service = File.dirname(__FILE__) + '/widebot/service'
  # resource = File.dirname(__FILE__) + '/widebot/resource'
  # database = File.dirname(__FILE__) + '/widebot/database'

  # autoload :Version, widebot + '/version.rb'
  # autoload :TwitterBot, widebot + '/twitter_bot.rb'
  # autoload :TweetFormatter, widebot + '/tweet_formatter.rb'
  # autoload :KeibaMaster, widebot + '/keiba_master.rb'
  # autoload :NetkeibaFetcher, service + '/netkeiba/netkeiba_fetcher.rb'
  # autoload :NetkeibaHTMLParser, service + '/netkeiba/netkeiba_html_parser.rb'
  # autoload :JRACalendarFetcher, service + '/jra/jra_calendar_fetcher.rb'
  # autoload :JRACalendarHTMLParser, service + '/jra/jra_calendar_html_parser.rb'
  # autoload :Race, resource + '/race.rb'
  # autoload :Horse, resource + '/horse.rb'
end
