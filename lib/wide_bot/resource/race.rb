module WideBot
  class Race
    def initialize(name:, grade:, race_course:, distance:, turf_or_dirt:, horses:)
      @name = name
      @grade = grade
      @race_course = race_course
      @distance = distance
      @turf_or_dirt = turf_or_dirt
      @horses = horses
    end
  end
end
