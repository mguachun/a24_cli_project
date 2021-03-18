class CLI

    def begin
        Scraper.get_page 
        howdy_user 
    end 

    def howdy_user 
        sleep (2)
        puts ' '
        puts "****************************************************"
        puts "Howdy! Here are the recent movies from A24 Studios!"
        puts "****************************************************"
        sleep (3)
        puts ' '
    
        Film.list_film 

        sleep (2)

       
        self.ask_for_input   #instance of the class

        puts ' '

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
            howdy_user
        end      
    end
end




