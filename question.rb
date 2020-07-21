require_relative 'car'

class Question
    attr_reader :car
  
    def initialize
      @car = Car.new
      @car.year = question("year")
      @car.brand = question("brand")
      @car.make = question("make")
      @car.mileage = question("mileage")
      @car.price = question("price")
  
      end
  
  
        def question(name)
          puts "What is the #{name}?"
          gets.chomp
      #puts "you put that you have #{input}" 
              end
end