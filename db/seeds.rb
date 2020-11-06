# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'
# resurrection of the dark lord - 7 horcrux, human sacrifice, coke
# butterbeer - butter, beer
# philosopher's stoned

ingredients = ['Gillyweed', 'Mandrake root', 'Newt', 'Jobberknoll feather', 'Horcrux', 'Dragon blood', 'Human sacrifice',
'Toad', 'Butter', 'Beer', 'Pixiedust', 'Coke', 'Vodka', 'Rum', 'Whiskey', 'Martini mix']
Ingredient.destroy_all


ingredients.each do |ingredient|
  Ingredient.create!(name: ingredient)
end

# url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
# user_serialized = open(url).read
# drinks = JSON.parse(user_serialized)

# drinks["drinks"].each do |hash|
#   Ingredient.create!(name: hash["strIngredient1"])
# end
