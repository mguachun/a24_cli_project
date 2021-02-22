class CLI

    def self.begin
        #puts scraper list
        howdy_user 
    end

    def self.howdy_user 
        puts "Welcome! Herer are the recent movies from A24 Studios!"
        #put class method of list

        num = self.ask_for_input

        Films.find_and_show_movie_obj(num)
    end

    def self.ask_for_input
        puts '\n'
        puts "Please select a number from the list"
        #gets.chomp.to_i
    end

    def sub_options
        puts "Press (e) to Exit"
        puts "Press (r) to return to Main Menu"
    end

   def goodbye
        puts "Thanks for stopping by!"
   end

end
