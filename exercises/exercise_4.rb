require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
store = Store.create(name: "Richmond", annual_revenue:300000, mens_apparel:true, womens_apparel:true)
store = Store.create(name: "Burnaby", annual_revenue:1260000 , mens_apparel:false, womens_apparel:true)
store = Store.create(name: "Gastown", annual_revenue:190000, mens_apparel:true, womens_apparel:false)
puts Store.count