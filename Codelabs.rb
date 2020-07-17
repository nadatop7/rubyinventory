class Car
  attr_accessor :year, :brand, :make, :mileage, :finance 
    def to_s
      "Your vehicle year is #{@year} and it's a #{@brand} #{@make} #{@mileage} and your finance is #{@finance} "
    end

#def add_commas(num_string)
  #num_string.reverse.scan(/\d{3}|.+/).join(",").reverse 
#end
  
#def price(cash)
# "$#{cash}"
#end
end
class Question
  attr_reader :car

  def initialize
    @car = Car.new
    @car.year = question("year")
    @car.brand = question("brand")
    @car.make = question("make")
    @car.mileage = question("mileage")
    @car.finance = question("finance")

    end


      def question(name)
        puts "What is the #{name}?"
        gets.chomp
    #puts "you put that you have #{input}" 
        end
end

class Display
  
  attr_reader :name, :list
  
  def initialize(name)
    @name = name
    @list = []
  end
  
    def add_car(a_car)
      @list.push(a_car)
    end
  
  def play
    @list.each do |car|
        puts car
    end
    puts ""
    puts "There are #{@list.size}"
  end
  end


form = Question.new
car = form.car
puts car
form2 = Question.new
car2 = form2.car
puts car2

used_car = Display.new("used_car")
used_car.add_car(car)
used_car.add_car(car2)

used_car.play