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
      puts "I am a #{species}."
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

end
