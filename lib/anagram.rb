require "pry"
class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(words_to_compare)
    words_to_compare.select do |word_to_compare| 
      word_to_compare.split("").sort.join("") == @word.split("").sort.join("")
    end
  end
end

listen = Anagram.new("listen")
listen.match(["enlists", "google", "inlets", "banana"])

