class Owner

  @@all = []
  
  attr_accessor :name, :pets
  attr_reader :species

  def initialize(species)
    @@species = species
    @pets = {fishes: [], dogs: [], cats: []}
    @@all << self
  end

  def say_species
      puts "I am a #{@species}."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.each {|type, pet_array| pet_array.each {|pet| pet.mood = "nervous"}}
    @pets.clear
  end

end
