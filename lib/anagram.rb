class Anagram

    attr_accessor :word

    def initialize(word)
        @word = word
    end 

    def match(word_array)
        word_array.select{|word| word.split("").sort == self.word.split("").sort}
    end

end 
