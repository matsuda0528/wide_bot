require 'nokogiri'

module WideBot
  class NetkeibaHTMLParser
    def initialize
    end

    def parse(html)
      doc = Nokogiri::HTML.parse(html)

      race_name = doc.xpath("//div[@class='RaceName']").text.strip
      horses = []
      doc.xpath("//tr[@class='HorseList']").each do |horse|
        horse_name = horse.xpath(".//span[@class='HorseName']").text.strip
        jockey = horse.xpath(".//td[@class='Jockey']").text.strip
        horses << Horse.new(name: horse_name, jockey: jockey)
      end
      Race.new(name: race_name, horses: horses)
    end
  end
end
