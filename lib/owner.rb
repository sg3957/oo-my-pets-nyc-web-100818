class Owner
  # code goes here
  attr_reader :species
  attr_accessor :name, :pets
@@all = []


  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self

  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
end
  def self.reset_all
    @@all.clear
  end

def say_species
  "I am a #{self.species}."
end

def buy_fish(name)
  fish = Fish.new(name)
  @pets[:fishes] << fish
end

def buy_cat(name)
  cat = Cat.new(name)
  @pets[:cats] << cat
end

def buy_dog(name)
  dog = Dog.new(name)
  @pets[:dogs] << dog
end

def walk_dogs
  @pets[:dogs].select do |dog|
    dog.mood = "happy"
  end
end

def play_with_cats
  @pets[:cats].select do |cat|
    cat.mood = "happy"
  end
end

def feed_fish
  @pets[:fishes].select do |fish|
    fish.mood = "happy"
  end
end

def sell_pets
  @pets.select do |key, value|
    value.select do |pet|
    pet.mood = "nervous"
  end
end
@pets.clear
end

def list_pets
  "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
end


end
