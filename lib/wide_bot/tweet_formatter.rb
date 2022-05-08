module WideBot
  class TweetFormatter
    def initialize
    end

    def format(horses, race_info)
      <<~"Tweet"
      #{race_info.race_course} #{race_info.number}
      #{race_info.name}

      好走期待馬:
      #{horses[0].number}番#{horses[0].name}
      #{horses[1].number}番#{horses[1].name}

      ワイド #{horses[0].number}-#{horses[1].number}
      Tweet
    end
  end
end
