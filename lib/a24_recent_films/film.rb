# frozen_string_literal: true

#require_relative "film/version"

class Film
  @@all = []
  attr_accessor :title, :release, :image
  
  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def self.list_film
    @@all.each.with_index(1) {|obj, index| puts "#{index}. #{obj.title}"}
  end

  def self.find_by_title(selected_title)
    self.all.find {|obj| obj.title == selected_title}
  end

  def find_and_show_film_obj(integer)
    index = integer - 1
    obj = moviecard.list_movie_titles[index - 1]
    # puts "Title:" = moviecard.css("figcaption h3").text
    # puts "Release Date:" = moviecard.css("figcaption h6")
    # puts "Image:" = moviecard.css("img")[0]['src']
  end


end






