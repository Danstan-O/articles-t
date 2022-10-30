require "pry"

class Magazine
  attr_accessor :name, :category
  @@all=[]


  def initialize(name, category)
    @name = name
    @category = category
    @@all << self

  end

  def self.all
      @@all
  end

  def contributors 
    articles_in_the_magazine.map do |article|
      article.author
    end
  end

  def article_titles
    articles_in_the_magazine.map do |article|
      article.title
    end
  end

  def self.find_by_name(name)
    @@all.find do |magazine|
      magazine.name == name
    end
  end

  def contributing_authors
    all_authors = articles_in_the_magazine.map do |article|
      article.author
    end
    uniq_authors=all_authors.uniq
    uniq_authors.filter do |author|
      all_authors.count(author) > 2
    end
  end

  private
  def articles_in_the_magazine
    Article.all.filter do |article|
      article.magazine == self
    end
  end

end


daily=Magazine.new "daily nation", "news"

binding.pry










