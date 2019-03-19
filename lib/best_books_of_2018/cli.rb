class BestBooksOf2018::CLI

  def call
    BestBooksOf2018::Scraper.new.books_maker
    list_books
  end

  def list_books
    puts "\n"
    puts "WELCOME TO THE WASHINGTON POST BEST BOOKS OF 2018!".colorize(:light_blue)
    puts "\n"
    BestBooksOf2018::Book.all.each_with_index do |bk,i|
    puts "#{i+1}.  #{bk.name}"
  end

    puts "\n"
    puts "Please make your book selection : ".colorize(:light_blue)
    input = gets.strip.downcase

    if input.to_i.between?(1,10)
      selected_book = BestBooksOf2018::Book.all[input.to_i-1]
      display_book(selected_book)
    else
      list_books
    end

    puts "Would you like to select another book ? Enter Y or N".colorize(:blue)
    input = gets.strip.downcase
    if input == "y"
      list_books
    elsif input == "n"
      puts ""
      bye_array = ["“I find television very educating. Every time somebody turns on the set, I go into the other room and read a book. ― Groucho Marx”", "“If you don't have time to read, you don't have the time (or the tools) to write. Simple as that.”
      ― Stephen King","“Think before you speak. Read before you think.” ― Fran Lebowitz,"]
      puts "#{bye_array.sample} \n"
      puts "Have a great day !"
      exit
    else
      puts ""
      puts "Invalid answer".colorize(:red)
      list_books
    end
  end


  def display_book(selected_book)
    puts "---------------------------------------"
    puts "#{selected_book.name.upcase}".colorize(:blue)
    puts "By #{selected_book.author}".colorize(:blue)
    puts " "
    puts "Summary : "
    puts ""
    puts " #{selected_book.description}"
    puts "Price : #{selected_book.price[8..11]}"
    puts "----------------------------------------"
  end

end
