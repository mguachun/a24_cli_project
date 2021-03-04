

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

#info shown through the objs