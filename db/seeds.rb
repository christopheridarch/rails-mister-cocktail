# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'JSON'

Ingredient.delete_all
Cocktail.delete_all

url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'

JSON.parse(open(url).read)["drinks"].each do |ingredient|
  Ingredient.create(name: ingredient["strIngredient1"])
end

mojito = Cocktail.create(name: "Mojito")
punch = Cocktail.create(name: "Petit Punch")
sangria = Cocktail.create(name: "Sangria")
planteur = Cocktail.create(name: "Planteur")
vin = Cocktail.create(name: "Vin Chaud")
jager = Cocktail.create(name: "Jäger Bomb")
