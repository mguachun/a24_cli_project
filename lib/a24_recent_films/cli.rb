class CLI

    def begin
        Scraper.get_page 
        howdy_user 
    end

    def howdy_user 
        puts ' '
        puts "****************************************************"
        puts "Howdy! Here are the recent movies from A24 Studios!"
        puts "****************************************************"
        puts ' '
    
        Film.list_film 

        # num = self.ask_for_input
        self.ask_for_input

        puts ' '

        # Film.print_movie_info(num)

        # sub_options

    end


    def ask_for_input
        puts ' '
        puts "Please select a number from the list:"
        input = gets.chomp.to_i
     

            if input >= 1 && input <= 9
               Film.print_movie_info(input)
               sub_options
            else 
                puts "Error, please try again!"
                ask_for_input
                

               
            end 
    end
    #^user chooses number and give back image and date released

    def exit_film
        puts "Come back soon to see the most recent films from A24 Studios!"    
   end

    def sub_options
        puts "Would you like to see the list again? [y/n]"
        input = gets.strip.downcase

        if input == "y"
            puts "Back to the recent A24 films list!"
            puts " "
            howdy_user

        elsif input == "n" || input == "exit"
            exit_film
            puts " "
            puts "Thanks for stopping by!"
            puts " "

        else
            puts " "
            puts "Oops! Please try again!"
            puts " "
        end      
    end
end






