require "colorize"
class Menu
    def initialize (menu)
        @menu = menu
        @color_scheme = { color: :light_cyan, background: :default}
    end

    def print
        border = @menu[:message].gsub(/\s|\S/, '*')
        border.colorize(@color_scheme)
        puts @menu[:message].colorize(@color_scheme)
        border.colorize(@color_scheme)
        @menu[:options].each_with_index do |item, index|
            puts "#{index + 1}) #{item} "
        end
    end


    # get user input return the number in the list, do error checking handling
    def get_selection
        #get input from user, convert to int
        puts "select a value"
        input = gets.strip
        selection = Integer(input)

        if selection >=1 && selection <=@menu[:options].size
            return selection

        else
            puts "The response #{selection} is an invalid # choice. Try again."
            #loop until user enter a valid number
            self.get_selection
         #return a valid input
        end

        #check if input is int
        rescue ArgumentError
            # if an ArgumentError occurs above then ruby will come here instead of throwing error
            puts "The response #{input} is an invalid data type. Try again."
            #loop until user enter a valid number
            self.get_selection
        end

end
