
#   require 'pry'
#   require 'nokogiri'
#   require 'open-uri'
# #require_relative 'a24_recent_films/a24_recent_films.rb'
# #require_relative 'a24_recent_films/cli.rb'

class Scraper
    def self.get_page
        @@doc = Nokogiri::HTML(URI.open("https://a24films.com/films"))
        moviecard = @@doc.css("div.media-tile.film.active.has-thumb").each do |moviecard|
            film_obj = Film.new(moviecard.css("figcaption h3").text)
            film_obj.release = moviecard.css("figcaption h6")
            film_obj.image = moviecard.css("img")[0]['src']
        end
        
    end
  


end 


    
