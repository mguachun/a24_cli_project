class CLI

    def self.begin
        Scraper.get_page 
        howdy_user 
    end

    def self.howdy_user 
        puts "Howdy! Here are the recent movies from A24 Studios!"
        Films.list_films

        num = self.ask_for_input

        Films.find_and_show_movie_obj(num)
    end

    def self.ask_for_input
        puts '\n'
        puts "Please select a number from the list"
        gets.chomp.to_i
    end

    def sub_options
        puts "Press (e) to Exit"
        puts "Press (r) to return to Main Menu"
    end

   def goodbye
        puts "Thanks for stopping by!"
   end

   #add loop
end
