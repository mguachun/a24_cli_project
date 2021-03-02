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
#change name of method 
  def self.find_and_show_film_obj(integer)
    index = integer - 1
    obj = Scraper.get_page[index]
     puts "Title:#{obj.children[1].values[1]}"
     binding.pry

     puts "Release Date: #{film_obj.release}"
    # puts "Image: #{film_obj.image}"
  end


end






