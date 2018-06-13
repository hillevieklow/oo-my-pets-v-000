class Owner

  @@all = []
  attr_accessor :name, :pets
  attr_reader :species

  def initialize(species)
    @@species = species
    @pets = {fishes: [], dogs: [], cats: []}
  end

end
