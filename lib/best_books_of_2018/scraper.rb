class BestBooksOf2018::Scraper


  def  get_page
    Nokogiri::HTML(open("https://www.washingtonpost.com/graphics/2018/entertainment/books/best-books-of-2018/?noredirect=on&utm_term=.6d3fce89dfc"))
  end

  def scrape_books
    self.get_page.css("div.book")
  end

  def books_maker
    scrape_books.each { |b|
      BestBooksOf2018::Book.new_book(b) }
binding.pry
  end

end
