class Author
  # define_method("some_method") do
  #   puts "Some Details"
  # end

  # def some_method do
  #   puts "Some Details"
  # end
  # %w - this allows us to create an array of strings with putting them in there
  genres = %w(fiction coding history)
  
  genres.each do |genre|
    define_method("#{genre}_details") do |arg|
      puts "Genre: #{genre}"
      puts arg
      puts genre.object_id
    end
  end
end

author = Author.new

author.coding_details("Cal Newton")
author.fiction_details("Jim Butcher")
author.history_details("Tim Tam")