# frozen_string_literal: true

#require_relative "films/version"

class Films
  @@all = []
  attr_accessor :title, :release, :image
  
  def initialize()
    @@all << self
  end

  def self.all_films
    @@all_films 
  end

  def self.list_films
    @@all_films.each.with_index(1) do {|obj, index| puts "#{index}. #{create_a24_obj.title}"}
  end

  def self.find_by_title(selected_title)
    self.all_films.find {|obj|} create_a24_obj.title == selected_title
  end

  def find_and_show_film_obj(integer)
    index = integer - 1
    obj = moviecard.list_movie_titles[index - 1]
    puts "Title:" = moviecard.css("figcaption h3").text
    puts "Release Date:" = moviecard.css("figcaption h6")
    puts "Image:" = moviecard.css("img")[0]['src']
  end


end





end
