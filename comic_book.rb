require_relative 'book'

class ComicBook < Book
    def listen
        @finished = true
    end
end

logicomix = ComicBook.new("Logicomix", "Apostolos")

puts logicomix.title
