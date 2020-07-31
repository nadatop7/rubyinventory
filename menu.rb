require_relative 'format_menu'
require_relative 'question'
require_relative 'used_car'

class Menu

    attr_reader :title, :options, :inventory

    def initialize
        @title = "Welcome to Nathaniel's car lot"
        @options = ["1. Add car", "2. sell car", "3. show inventory", "4. exit"]
        @inventory = Used_car.new("Nathan's Used Cars")
        intro
        prompt
        display
    end
    
    def intro
        puts @title
    end

    def prompt
        puts "Choose one of the following"
    end

    def display
        @options.each do |c|
            puts c
        end
        choices
    end

    def choices
        input = gets.chomp
        case input
        when "1"
        form = Question.new
        @inventory.add_car(form.car)
        
        when "2"
            
            puts @inventory.sell
            
            
            
            
        when "3"
            @inventory.show_inventory
        prompt
        display
        when "4"
            exit
        end
        puts ""
        display
    end
end

menu = Menu.new
menu.choices 
