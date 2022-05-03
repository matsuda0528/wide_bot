module WideBot
  class Horse
    attr_reader :name, :age, :gender, :jockry, :barn

    def initialize(name:nil, age:nil, gender:nil, jockey:nil, barn:nil)
      @name = name
      @age = age
      @gender = gender
      @jockey = jockey
      @barn = barn #厩舎
    end
  end
end
