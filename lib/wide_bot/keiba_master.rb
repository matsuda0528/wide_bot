module WideBot
  class KeibaMaster
    def initialize
    end

    def predict_race(race_info)
      choose_two_horses_by_random(race_info.horses)
    end

    private

    def choose_two_horses_by_random(horses)
      horses.sample 2
    end
  end
end
