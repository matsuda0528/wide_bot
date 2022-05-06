require 'net/http'
require 'uri'

module WideBot
  class JRACalendarFetcher
    def initialize
    end

    def fetch(date)
      yyyy = date.year
      m = date.month
      mmdd = date.strftime("%m%d")

      url = "https://jra.jp/keiba/calendar#{yyyy}/#{yyyy}/#{m}/#{mmdd}.html"
      html = Net::HTTP.get(URI.parse(url))
    end
  end
end
