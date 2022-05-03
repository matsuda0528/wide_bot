require 'nokogiri'

module WideBot
  class NetkeibaHTMLParser
    def initialize
    end

    def parse(html)
      doc = Nokogiri::HTML.parse(html)
    end
  end
end
