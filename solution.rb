# Please copy/paste all three classes into this file to submit your solution!


require "pry"


class Article
    attr_reader :title
    @@all=[]

    def initialize(author, magazine, title)
        @author=author
        @magazine=magazine
        @title=title
        @@all << self

    end

    def author
        @author
    end

    def magazine
        @magazine

    end

    def self.all
        @@all
    end

end



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
        # binding.pry
      
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

wakanda=Article.new "kisaka", "daily", "wakanda forever"

omtiti=Article.new "omtiptip", "mwanaspoti", "maaancheester united"

mtemi=Author.new "mshikaji"

mshikaji=Magazine.new "mshiks", "uhondo"



  binding.pry