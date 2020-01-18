require './book'

class AudioBook < Book
    def listen
        @finished = true
    end
end


waking_up = AudioBook.new("Waking Up", "Sam Harris")

puts waking_up.listen

waking_up.lend
puts waking_up.count

waking_up.lend
puts waking_up.count

waking_up.lend
puts waking_up.count

waking_up.lend
puts waking_up.count

waking_up.lend
puts waking_up.count