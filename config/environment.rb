require 'bundler/setup'
require "pry"
Bundler.require
require_all 'app/models'


zoo = Zoo.new("mo", "123 main")
zoo2 = Zoo.new("moho", "123 main")

origin = Origin.new("NA", "USA")
origin2 = Origin.new("NA", "Canada")
origin3 = Origin.new("NA", "Mexico")
origin4 = Origin.new("EU", "France")

animal = Animal.new("dog", "jeremy",origin,zoo )
animal2 = Animal.new("cat", "jeremy",origin,zoo )
animal3 = Animal.new("dog", "jeremy",origin2,zoo2 )
animal4 = Animal.new("cat", "jeremy",origin,zoo2 )

Animal.all

Origin.find_by_continent("EU")

binding.pry 
0
