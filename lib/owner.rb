class Owner

  @@all = []
  attr_accessor :name, :pets
  attr_reader :species

  def initialize(species)
    @@species = species
    @pets = {fishes: [], dogs: [], cats: []}
    @@all << self
  end

  def say_species(species)
      puts "I am a #{species}"
  end

end
