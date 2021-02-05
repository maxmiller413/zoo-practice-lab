# ### Animal Class
# - An `Animal` should be instantiated with the species (e.g. "Lion", "Koala", "Lynx") and name (e.g. "Mufasa", "Simba", "Fluffy"). 
# - `Animal#zoo` should return the zoo instance that the animal can be found in.
# - `Animal#origin` should return the origin instance that the animal can be found in.
# - `Animal#species` should return the species of the animal.
# - `Animal#name` should return the name of the animal.
# - `Animal.all` should return an array of all the animal instances.
class Animal
    @@all = []
    
    attr_reader :species, :name, :origin
    attr_accessor :zoo

    def initialize (species, name, origin_instance, zoo_instance)
        @species = species
        @name = name
        @origin = origin_instance
        @zoo = zoo_instance
        @@all << self 
    end 

    def self.all
        @@all
    end 
end
