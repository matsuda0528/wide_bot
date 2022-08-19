require 'nokogiri'

module WideBot
  class JRACalendarHTMLParser
    def initialize
    end

    def parse(html)
      doc = Nokogiri::HTML.parse(html)

      kaisai_year = doc.xpath("//div[@class='contents_header opt']").xpath(".//div[@class='main']").text.slice(0..3)
      kaisai_infos = doc.xpath("//div[@id='program_list']").xpath(".//div[@class='main']").map(&:text)

      race_ids = []
      kaisai_infos.map do |info|
        times, place, day = info.scan(/.{1,2}/)
        code = RaceCourseIDTable[place]
        times = format("%02d", times.to_i)
        day = format("%02d", day.to_i)
        race_ids.append RaceId.new(year: kaisai_year, code: code, times: times, day: day)
      end
      return race_ids
    end
  end
end
