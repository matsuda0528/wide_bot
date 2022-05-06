require 'nokogiri'

module WideBot
  class NetkeibaHTMLParser
    def initialize
    end

    def parse(html)
      doc = Nokogiri::HTML.parse(html)

      race_num = doc.xpath("//span[@class='RaceNum']").text
      race_name = doc.xpath("//div[@class='RaceName']").text.strip
      race_course = doc.xpath("//div[@class='RaceData02']").text.split[1]

      horses = []
      doc.xpath("//tr[@class='HorseList']").each do |horse|
        horse_name = horse.xpath(".//span[@class='HorseName']").text.strip
        horse_number = horse.xpath(".//*").select{|v| v[:class] =~ /Umaban\d/}.first.text
        jockey = horse.xpath(".//td[@class='Jockey']").text.strip
        horses << Horse.new(name: horse_name, number: horse_number, jockey: jockey)
      end
      Race.new(name: race_name, number: race_num, race_course: race_course, horses: horses)
    end
  end
end
