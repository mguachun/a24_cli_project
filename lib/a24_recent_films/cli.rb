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

    end

    #while loop
    # i = 0
    # while i < 11 do
    #     puts i 
    #     i += 1
    #     break if i == 12

    # end


    def ask_for_input
        puts ' '
        puts "Please select a number from the list:"
        input = gets.chomp.to_i
    end
    
    #user chooses number and give back image and date released
    def print_movie_info

        puts "Title: #{film_obj.title}"
        puts ' '
        puts "Image: #{film_obj.image}"
        puts ' '
        puts "Date Released: #{film_obj.release}"
        
        sub_options
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

#   def list_films(index_of_titles)
#             puts " "
#             puts "#{Film.all[index_of_titles].title}"
#             puts " "
#             puts "#{Film.all[index_of_titles].release}"
#             puts " "
#             puts "#{Film.all[index_of_titles].image}"
#            end
    
end




