class Menu
    def initialize (menu)
        @menu = menu
    end

    def print
        puts @menu[:message]
        @menu[:options].each_with_index do |item, index|
            puts "#{index + 1}) #{item} "
        end
    end
end
