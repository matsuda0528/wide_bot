module WideBot
  class Race
    attr_reader :name, :number, :grade, :race_course, :distance, :turf_or_dirt, :horses

    def initialize(name:nil, number:nil, grade:nil, race_course:nil, distance:nil, turf_or_dirt:nil, horses:nil)
      @name = name
      @number = number
      @grade = grade
      @race_course = race_course
      @distance = distance
      @turf_or_dirt = turf_or_dirt
      @horses = horses
    end
  end
end
