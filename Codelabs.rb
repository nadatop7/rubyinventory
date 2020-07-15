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
form = Question.new
car = form.car
puts car





#puts "what is the year"
#year = gets.chomp
#puts "what is the make of the car"
#car = gets.chomp 
#puts "Vehicle you would want"
#like = gets.chomp
#puts "what is your finance"
#finance = gets.chomp
#puts ""
#puts "You have said you have \n #{year} #{brand} #{make} #{mileage}"