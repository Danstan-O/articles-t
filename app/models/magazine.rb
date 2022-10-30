require "pry"

class Magazine
  attr_accessor :name, :category


  def initialize(name, category)
    @name = name
    @category = category
    @@all=[]

  end

  # def @@all
  #     @@all >> all
  # end


end


daily=Magazine.new "daily nation", "news"

binding.pry