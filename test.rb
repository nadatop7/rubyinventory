class Drinks
    attr_accessor :brand, :name, :flavor, :size, :color
    def to_s
       puts "" 
       "The #{@brand} company makes #{@name} with a flavor of #{@flavor} in a #{@size} can in a colorful #{@color}"
    end
end

class Describe
attr_reader :drinks

def initialize
    @drinks = Drinks.new
    @drinks.brand = method("brand")
    @drinks.name = method("name")
    @drinks.flavor = method("flavor")
    @drinks.size = method("size")
    @drinks.color = method("color")
end
def method(loki)
   
    puts "What is the #{loki}"
   
    gets.chomp
end
end
summary = Describe.new
drinks = summary.drinks
puts drinks

