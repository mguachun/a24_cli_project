require 'nokogiri'
require 'open-uri'
#require_relative 'a24_recent_films/a24_recent_films.rb'
#require_relative 'a24_recent_films/cli.rb'
require 'pry'
class Scraper
    def self.get_page
        @@doc = Nokogiri::HTML(open("https://a24films.com/films"))
    end
    
    def self.create_a24_obj
       moviecard = @@doc.css("div.media-tile.film.active.has-thumb")
        
    end

    def a24_iterate
        create_a24_obj.each do |hash| 
            binding.pry

        end 
    end



end 
Scraper.get_page
Scraper.create_a24_obj

#     #def prints_first_title
#     #    first_title = self.get_page.css("h3").text
#    #     puts first_title
#    # end

#     def prints_movie_info
#         binding.pry
#         movie_info = self.get_page.css("div.datum").text
#         puts movie_info
#     end

#     #def prints_movie_date
#     #    movie_date = self.get_page.css("h6")
#     #    puts movie_date
#     #end



# Scraper.new.prints_first_title
# Scraper.new.prints_movie_info
# #Scraper.new.prints_movie_date
    