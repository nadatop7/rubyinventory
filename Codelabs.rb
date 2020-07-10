def question(name)
  puts "What is the #{name}"
  input = gets.chomp
  #puts "you put that you have #{input}"
  input
end

def add_commas(num_string)
    num_string.reverse.scan(/\d{3}|.+/).join(",").reverse 
end
  
def price(cash)
    "$#{cash}"
end
year = question("year")
brand = question("brand")
make = question("make")
mileage = add_commas(question("mileage"))
cash = add_commas(question("finance"))
puts "#{year} #{brand} #{make} #{mileage} #{price(cash)}"


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
 