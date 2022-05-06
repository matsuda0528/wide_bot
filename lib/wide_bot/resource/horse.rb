module WideBot
  class Horse
    attr_reader :name, :number, :age, :gender, :jockry, :barn

    def initialize(name:nil, number:nil, age:nil, gender:nil, jockey:nil, barn:nil)
      @name = name
      @number = number
      @age = age
      @gender = gender
      @jockey = jockey
      @barn = barn #厩舎
    end
  end
end
