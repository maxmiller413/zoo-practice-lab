# ### Origin Class
# - An `Origin` should be initialized with a `continent` and a `country`, which should both be passed as strings.
# - `Origin#country` should return the country for the origin instance.
# - `Origin#continent` should return the name of continent for the origin instance.
# - `Origin.all` should return an array of all the origin instances.

# - `Origin#zoos` should return all the zoos that hold animals of this specific origin.
# - `Origin#animal_number` should return an integer that indicates the number of different animal instances an origin has in total.
# - `Origin.find_by_continent` should take in a string of a continent as an argument and return an array of all the countries within that continent.
# - `Origin.most_animals` should return an instance of an origin that in general has the most animals.

class Origin

    @@all = []

    attr_reader :continent, :country 

    def initialize (continent, country)
        @continent = continent 
        @country = country 
        @@all << self
    end 
    
    def self.all
        @@all
    end 

# - `Origin#animals` should return all the animals that a specific instance of an origin has.

    def animals
        #binding.pry
        Animal.all.select do |animal|
            animal.origin == self
        #binding.pry 
        end
    end 

    def animal_number
        animals.length
    end

# - `Origin.find_by_continent` should take in a string of a continent as an argument and return an array of all the countries within that continent.

    def self.find_by_continent(variable_continent)
        # #binding.pry
        new_arr = []
        self.all.select do |instance_continent|
            binding.pry
            if instance_continent.continent == variable_continent
                new_arr << instance_continent.country
            end
        end
        new_arr
        # all.each{|x| x.animals.map {|animal| binding.pry animal.continent == variable_continent}}
    
    end

    # - `Origin.most_animals` should return an instance of an origin that in general has the most animals.


    def self.most_animals
        #binding.pry
        most_origin = all[0]
        #binding.pry
        all.each do |origin|
            if origin.animal_number > most_origin.animal_number 
                most_origin = origin 
                #binding.pry
            end 
        end 
        most_origin
    end 
end

