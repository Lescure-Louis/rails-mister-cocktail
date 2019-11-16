# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require 'open-uri'
# require 'json'

# url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
# user = open(url).read
# result_api = JSON.parse(user)
# # result_api.each {|ingredient| puts ingredient}

# Cocktail.destroy_all if Rails.env.development?


# # puts result_api["drinks"][0]["strIngredient1"]


# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")
# Ingredient.create(name: "rhum")
# Ingredient.create(name: "vodka")
# Ingredient.create(name: "lime")
# Ingredient.create(name: "ginger ale")
# Ingredient.create(name: "soda water")
# Ingredient.create(name: "simple sirup")
# Ingredient.create(name: "clamato")
# Ingredient.create(name: "valentina")
# Ingredient.create(name: "worchester sauce")
# Ingredient.create(name: "celery salt")


# Cocktail.create(name: "Bloody Caesar")

require 'open-uri'


puts "Destroy Cocktails"
Cocktail.destroy_all

puts "Destroy ingredients"
Ingredient.destroy_all


puts "Create ingredients"
url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
ingredients = JSON.parse(open(url).read)
ingredients["drinks"].each do |ingredient|
  i = Ingredient.create(name: ingredient["strIngredient1"])
  puts "create #{i.name}"
end
