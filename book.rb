module Lendable
    def lend
        @count = @count - 1;
        if (@count < 0)
            @count = 0;
        end
    end
end

class Book
    include Lendable
    attr_reader :title, :author
    attr_writer :finished
    attr_accessor :count
    def initialize(title, author)
        @title = title
        @author = author
        @finished = false
        @count = 3
    end

    def Book.recommended_books
        recs = [
            Book.new("The Well-Grounded Rubyist", "David A. Black"),
            Book.new("Practical Object-Oriented Design in Ruby", "Sandi Metz"),
            Book.new("Effective Testing with RSpec 3", "Myron Marston"),
          ]
    end

end

puts Book.recommended_books.map {|book| book.title}