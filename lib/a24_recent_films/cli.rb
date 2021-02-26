class CLI

    def begin
        Scraper.get_page 
        howdy_user 
        ask_for_input

    end

    def howdy_user 
        puts ' '
        puts "****************************************************"
        puts "Howdy! Here are the recent movies from A24 Studios!"
        puts "****************************************************"
        puts ' '
        binding.pry
        Film.list_film

        num = self.ask_for_input

        Film.find_and_show_movie_obj(num)
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
    

    
        # puts "Date Released: #{film.date}"
        # puts "Movie Image: #{film.image}"
        puts "Title: #{film_obj.title}"
    end

    def exit_film
        puts "Thanks for stopping by!"
   end


    def sub_options
        puts "Press (e) to Exit"
        puts "Press (r) to return to Main Menu"

        if answer == "r"
            puts "Back to Main Menu"
            puts " "
            self.begin
    
        elsif answer == "e"
            exit_film
        else
            puts " "
            puts "Oops! Please try again!"
            puts " "
        end      
    end

  # def list_films(index_of_titles)
        #     puts " "
        #     puts "#{Film.all[index_of_titles].title}"
        #     puts " "
        #     puts "#{Film.all[index_of_titles].release}"
        #     puts " "
        #     puts "#{Film.all[index_of_titles].image}"
        #    end
        


        # #this method will input a proper input between 1-10
        # if input.to_i > 0 && input.to_i <= 10
        #     index_of_titles = input.to_i - 1
        # else
        #     puts "Please try again!"
        # end 
        # #has to connect index with object
        #     object = Film.all[5] 
        #     moviecard.list_movie_titles[index_of_titles - 1] 
        # end
        # #connect movie title with date and image attr
        # # Film.find_and_show_film_obj
        # # puts ' '
        # # #puts
end




