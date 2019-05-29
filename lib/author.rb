class Author
    attr_accessor :name, :posts
    @@num_post = 0
    def initialize(name)
        @name = name
        @posts =[]
    end

    def add_post(pname)
        @posts << pname
        pname.author = self
        @@num_post += 1

    end

    def add_post_by_title(tpost)
        npost = Post.new(tpost)
        @posts << npost
        npost.author = self
        @@num_post += 1
    end

    def Author.post_count
        @@num_post
    end

end