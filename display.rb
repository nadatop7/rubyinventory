require_relative 'car'
require_relative 'question'

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