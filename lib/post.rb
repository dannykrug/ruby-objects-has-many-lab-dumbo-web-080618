class Post

  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  # def author
  #   Author.all.select {|author| author.post == self}
  # end

  def author_name
    if self.author
      return author.name
    end
  end

end
