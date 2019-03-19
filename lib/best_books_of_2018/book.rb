class BestBooksOf2018::Book

  attr_accessor :name, :author, :description, :price

  @@all = []

  def self.new_book(b)
    self.new(
    b.css("p.booktitle").text,
    b.css("span.author").text,
    b.css("p.blurb").text,
    b.css("a.price").text
    )
  end

  def initialize(name=nil, author=nil, description=nil, price=nil)
    @name = name
    @author = author
    @description = description
    @price = price
    @@all << self
  end


  def self.all
    @@all
  end


end
