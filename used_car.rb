#require_relative 'display'
require_relative 'question'
require_relative 'menu'


class Used_car
attr_reader :carlist, :car, :title, :sell
    def initialize(title)
        @title = title
        car = Car.new
        car2 = Car.new
        car.year = "2014"
        car.brand = "hyundai"
        car.make = "Accent"
        car.mileage = "103,000"
        car.price = "$7,500"
        car2.year = "2010"
        car2.brand = "Honda"
        car2.make = "Accord"
        car2.mileage = "180,000"
        car2.price = "$8,000"
        @carlist = [car, car2]
    end

    def add_car(a_car)
        
        @carlist.push(a_car)
        
    end

    def sell
        
        @carlist.pop
        
    end

    def show_inventory
        puts "#{@title} has #{@carlist.size} available:"
            @carlist.each do |t|
                puts t
        end
    end
end
