require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Store < ActiveRecord::Base
  has_many :employees
end

class Employee < ActiveRecord::Base
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Kharoom", last_name: "Viroosh", hourly_rate: 50)
@store1.employees.create(first_name: "Kokoto", last_name: "Vilbeet", hourly_rate: 40)
@store1.employees.create(first_name: "Khris", last_name: "Von Beethoven", hourly_rate: 30)
@store2.employees.create(first_name: "Alex", last_name: "Way", hourly_rate: 60)
@store2.employees.create(first_name: "Alexis", last_name: "Weigh", hourly_rate: 50)
@store2.employees.create(first_name: "Alexa", last_name: "Waye", hourly_rate: 40)
@store2.employees.create(first_name: "Alexander", last_name: "Wey", hourly_rate: 30)