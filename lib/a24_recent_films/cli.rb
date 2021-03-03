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


        num = self.ask_for_input

        puts ' '

        Film.print_movie_info(num)
        sub_options

    end

    def ask_for_input
        puts ' '
        puts "Please select a number from the list:"
        input = gets.chomp.to_i
    end
    
    #user chooses number and give back image and date released
    def cli_loop

        loop do
            puts "Do you want to do that again?"
                puts "Press 'y' to continue:"
                puts "Press 'n' to exit:"
                answer = gets.chomp
                if answer != 'Y'
                    break
                end
            end
            

    end

    def sub_options
        puts "Press (e) to Exit"
        puts "Press (r) to return to Main Menu"
        input = gets.strip.downcase

        if answer == "r"
            puts "Back to Main Menu"
            puts " "
            self.begin
        elsif answer == "e"
            exit_film
            puts "Thanks for stopping by!"
        else
            puts " "
            puts "Oops! Please try again!"
            puts " "
        end      
    end

    def exit_film
        puts "Thanks for stopping by!"
   end

end




