require 'net/http'
require 'uri'

module WideBot
  class NetkeibaFetcher
    def initialize
    end

    def fetch(url)
      html = Net::HTTP.get(URI.parse(url))
    end
  end
end
