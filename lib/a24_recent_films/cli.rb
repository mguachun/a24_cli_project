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
        puts "Please select a number from the list:"
        gets.chomp.to_i
    end

    def sub_options
        puts "Press (e) to Exit"
        puts "Press (r) to return to Main Menu"

        if answer == "r"
            puts " "
            self.begin
            puts " "

        elsif answer == "e"
            exit_films
        else
            puts " "
            puts "Oops! Please try again!"
            puts " "
        end      
    end

   def exit_films
        puts "Thanks for stopping by!"
   end

   #add loop
   def Menu
    list_films 
    input = gets.strip.downcase

    if input = if
        puts " "

    elsif input ! = "exit"
        i = Integer(input , exception : false) #parse input to make exception in arg when n/f
        if !i.nil?
            puts i
            list_films(i-1) #prints num user inputs
            sub_options

        else #arg if input is wrong
            puts "Whoops! Please try again!"
        end
    end
    self.ask_for_input
   end
   
   def list_films(index)
    puts "Please choose a number:"
    puts " "
    puts "#{Films.all[index].title}"
    puts " "
    puts "#{Films.all[index].release}"
    puts " "
    puts "#{Films.all[index].image}"
   end



end

