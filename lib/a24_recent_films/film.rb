# frozen_string_literal: true

#require_relative "film/version"
#I'm dealing with Film objs not title objs
class Film
  @@all = []
  attr_accessor :title, :release, :image, :producer, :starring

  def initialize(title)
    @title = title
    @@all << self #save
    #self.class.all
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

  def self.print_movie_info(integer)
    index = (integer - 1)
    obj = @@all[index]
    #^ accesses instances to get data from 
    #scraper data instead of Scraper.get_page[index]
    #allows access to Film instances stored in @@all
  
    puts "Title: #{obj.title}"
    puts ' '
    puts "Image: #{obj.image}"
    puts ''
    puts "Release Date: #{obj.release}"
    puts ' '
    puts "Producer: #{obj.producer}"
    puts ' '
    puts "Starring: #{obj.starring}"
   
  end


end







