require 'nokogiri'

module WideBot
  class JRACalendarHTMLParser
    def initialize
    end

    def parse(html)
      doc = Nokogiri::HTML.parse(html)

      binding.pry
      # return array(race id)
    end
  end
end
