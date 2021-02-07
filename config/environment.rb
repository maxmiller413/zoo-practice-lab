require 'require_all'
require 'bundler/setup'
require "pry"
Bundler.require
require_all '../app/models/*'


zoo = Zoo.new("mo", "123 main")
zoo2 = Zoo.new("moho", "123 main")

origin = Origin.new("NA", "USA")
origin2 = Origin.new("NA", "Canada")
origin3 = Origin.new("NA", "Mexico")
origin4 = Origin.new("EU", "France")

animal = Animal.new("dog", "jeremy",origin,zoo )
animal2 = Animal.new("cat", "tina",origin3,zoo )
animal3 = Animal.new("dragon", "harold",origin3,zoo2 )
animal4 = Animal.new("pheno", "albert",origin3,zoo2 )



# Animal.animal_origin
# Origin.find_by_continent("EU")
# zoo2.all_animals
# zoo.all_animal_species
# p Origin.most_animals
# zoo2.all_animal

p Origin.find_by_continent('NA')

# binding.pry 
0
