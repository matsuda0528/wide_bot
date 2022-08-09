require 'net/http'
require 'uri'

module WideBot
  class NetkeibaFetcher
    def initialize
    end

    def fetch(race_id)
      url = "https://race.netkeiba.com/race/shutuba.html?race_id=#{race_id}"
      html = Net::HTTP.get(URI.parse(url))
    end
  end
end
