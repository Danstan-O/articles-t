require "pry"

require_relative "./author"
require_relative "./magazine"

class Article
    attr_reader :title

    def initialize(author, magazine, title)
        @author=author
        @magazine=magazine
        @title=title
        @@all=[]

    end

    # def @@all
    #     @@all >> all
    # end

end


binding.pry
