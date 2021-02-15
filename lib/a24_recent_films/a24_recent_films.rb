# frozen_string_literal: true

#require_relative "films/version"

class Films
  @@all = []
  attr_accessor :title, :release, :info
  #title, release, info
  def initialize(movie, date, starring)
    @movie = title
    @date = release
    @starring = info
  end

  
  @@all << self

end
