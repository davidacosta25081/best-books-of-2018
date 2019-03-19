class BestBooksof2018::CLI

def call
  BestBooksOf2018::Scraper.new.books_maker
  list_books
  menu
end

def list_books
  puts "Welcome to The Washington Post Best Books of 2018 list"
    BestBooksOf2018::Book.all.each_with_index do |bk,i|
      puts "#{i+1}.  #{bk.name}"
    end
end




end
