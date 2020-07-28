class Car
    attr_accessor :year, :brand, :make, :mileage, :price
      def to_s
        "The vehicle year is #{@year} and it's a #{@brand} #{@make} with #{@mileage} miles and the price is #{@price} "
      end
end