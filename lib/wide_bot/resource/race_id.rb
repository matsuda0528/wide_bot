module WideBot
  class RaceId
    # race_id YYYYCCTTDDJRR
    # YYYY: 開催年
    # CC:   競馬場コード(lib/wide_bot/database/race_course_id_table.rb参照)
    # TT:   第TT回開催
    # DD:   DD日目
    # RR:   第RRレース
    attr_reader :year, :code, :times, :day

    def initialize(year:nil, code:nil, times:nil, day:nil)
      @year = year
      @code = code
      @times = times
      @day = day
    end

    def all_id
      all_ids = []
      (1..12).each do |e|
        @race = format("%02d", e)
        all_ids.append text
      end
      all_ids
    end

    def sample_id
      @race = format("%02d", rand(1..12))
      text
    end

    def main_id
      @race = format("%02d", 11)
      text
    end

    def id(race)
      @race = format("%02d", race)
      text
    end

    private
    def text
      "#{@year}#{@code}#{@times}#{@day}#{@race}"
    end
  end
end
