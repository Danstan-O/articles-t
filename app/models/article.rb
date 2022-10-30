require "pry"

# require_relative "./author"
require_relative "./magazine"

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


wakanda=Article.new "kisaka", "daily", "wakanda forever"


binding.pry
