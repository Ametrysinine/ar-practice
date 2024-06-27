require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

class Employee < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
#  validates :hourly_rate, inclusion: 40..200
  validates :store, presence: true
end
class Store < ActiveRecord::Base
  validates :name, length: { minimum: 3}
  validates :annual_revenue, numericality: { only_integer: true, minimum: 0}
  validate :has_apparel


  def has_apparel
    if mens_apparel == false && womens_apparel == false
      errors.add("Need to sell some apparel")
    end
  end
end

puts "Input store name"
@store = gets.chomp

puts Store.create(name: @store).errors.messages