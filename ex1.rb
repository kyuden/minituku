class Library
  def initialize
    @books = []
  end
  def <<(book)
    @books << book
    p @books
  end
  def to_s
    puts "Library contents"
    @books.join("\n")
  end
end

class Book
  def initialize(args)
    @author = args[:author]
    @title  = args[:title]
    args[:library] << self
  end

  def to_s
    "Title:" + @title + ", Author:" + @author
  end
end

my_library = Library.new

boo = Book.new(:author => "Herman Melville", :title => "Moby-Dick", :library => my_library)

def boo.to_s
  "abc"
end

puts boo