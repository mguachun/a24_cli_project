class CLI

    def begin
        list_films
        menu
    end

    def list_films
        puts "Please enter the name of the movie you want to know more about."
    end

    def sub_options
        puts "Press (e) to Exit"
        puts "Press (r) to return to Main Menu"
    
    end

   def goodbye
    puts "Thanks for stopping by!"
   end

end
