

class Scraper
    def self.get_page
        @@doc = Nokogiri::HTML(URI.open("https://a24films.com/films"))
        moviecard = @@doc.css("div.media-tile.film.active.has-thumb").each do |moviecard|
            film_obj = Film.new(moviecard.css("figcaption h3").text)
            film_obj.release = moviecard.css("figcaption h6").text
            film_obj.image = moviecard.css("img")[0]['src']   
            site_producer = moviecard.css("div.overlay-data-group.credit div")[0]
            film_obj.producer = site_producer.nil? ? "na" : site_producer.text
            # film_obj.producer = moviecard.css("div.overlay-data-group.credit div")[0].text
            site_starring = moviecard.css("div.overlay-data-group.credit .datum")[1]
            film_obj.starring = site_starring.nil? ? "na" : site_starring.text
        #     film_obj.starring = moviecard.css("div.overlay-data-group.credit .datum")[1].text
            #initialization


        end
        #^film_obj is an intance
    end
  


end 
#working with inst of film obj and accessing producer 
#setting an attribute value 