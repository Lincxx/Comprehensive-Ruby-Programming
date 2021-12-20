require 'ostruct'

class Author
  attr_accessor :first_name, :last_name, :genre

  def author
    OpenStruct.new(first_name: first_name, last_name: last_name, genre: genre)
  end

  def method_missing(method_name, *arguments, &block)
    # author_...
    if method_name.to_s =~ /author_(.*)/
      # passing the method name
      author.send($1, *arguments, &block)
    else
      super
    end
  end
end

author = Author.new
author.first_name = "Cal"
author.last_name = "Newport"
author.genre = "Computer Science"

p author.first_name
p author.last_name
p author.genre
# Returns true if obj responds to the given method.
p author.respond_to?(:author_genre)

