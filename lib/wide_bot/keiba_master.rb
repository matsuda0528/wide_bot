module WideBot
  class KeibaMaster
    def initialize
    end

    def predict_race(race_info)
      choose_two_horses_by_random(race_info.horses)
    end

    private

    def choose_two_horses_by_random(horses)
      horses.sample(2).sort_by{|v| v.number.to_i}
    end
  end
end
