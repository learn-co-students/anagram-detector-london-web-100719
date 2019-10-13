
class Anagram 

  def initialize(word)
    @word = word
  end

  def match(list)
    list.select {|set| set.chars.sort == @word.chars.sort}
  end
end
