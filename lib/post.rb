class Post
    attr_accessor :author, :title
    @@all = []
    def initialize(title)
        @title = title
        @@all << self
    end

    def author_name
        if author
            self.author.name
        else
            nil
        end
    end
    def Post.all
        @@all
    end
end