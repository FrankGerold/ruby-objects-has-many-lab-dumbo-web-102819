class Post
  #
  # attr_reader :author
  attr_accessor :title, :author

  @@all = []

  def self.all
    @@all
  end

  def initialize (post)
    @title = post
    @@all << self
  end

  def author_name
    if self.author
      self.author.name
    else
      nil
    end
  end


end
