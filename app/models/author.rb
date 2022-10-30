require "pry"

require_relative './article'

class Author
  attr_reader :name


  def initialize(name)
    @name = name
    @articles=[]
    @magazines=[]
  
  end

  def magazines
    @magazines.uniq
  end

  def articles
    @articles
  end

  def add_article
    @articles << Article.new(self, magazine, title)
    @magazines << magazines
  end

  def topic_areas
    @magazines.map do |magazine|
      magazine.category.uniq
    end
  end

end


kisaka=Author.new "kisaka"
kisaka.name

binding.pry