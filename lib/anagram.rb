# Your code goes here!

class Anagram
    attr_accessor :word
    def initialize(word)
        @word = word
    end

    def match(anagram_array)
        is_anagram = []
        anagram_array.each do |w|
            if w.split('').sort == @word.split('').sort
                is_anagram << w
            end
        end
        is_anagram
      
    end
end