require "pry"

class Anagram

    attr_accessor :word

    def initialize(word)
        @word = word
    end

    def match(array_possible_anagrams) # I named variables horribly here
        word_chars_array = word.split("")
        
        array_split_chars = array_possible_anagrams.map { |word| word.split("") }
        anagram_match = array_split_chars.select { |array| array.sort == word_chars_array.sort} 
        if anagram_match.length > 0
            anagram_match.map { |splitup| splitup.join }
        else
            anagram_match
        end
    end
end

