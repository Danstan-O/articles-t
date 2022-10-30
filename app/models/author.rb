require "pry"

class Author
  attr_reader :name


  def initialize(name)
    @name = name
  
  end


end


kisaka=Author.new "kisaka"
kisaka.name

binding.pry