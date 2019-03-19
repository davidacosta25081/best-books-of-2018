class BestBooksOf2018::CLI

def call
  BestBooksOf2018::Scraper.new.books_maker
  list_books
  menu
end

def list_books
  puts "\n"
  puts "WELCOME TO THE WASHINGTON POST BEST BOOKS OF 2018!".colorize(:light_blue)

    BestBooksOf2018::Book.all.each_with_index do |bk,i|
      puts "#{i+1}.  #{bk.name}"
    end
end




end
