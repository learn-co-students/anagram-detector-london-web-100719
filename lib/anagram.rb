require 'pry'

class Anagram

    attr_accessor :item, :words

    

    def initialize(item)

        @words = []
        @item = item
        # binding.pry
        (@words << item).flatten
        # binding.pry

    end

    def match(item_to_match)

        ret_arr = []
        # @words << "second"
        # @words << "third"

        sorted_letters_hash = @words.each_with_object({}) do |word, hash|
            new_key = []
            new_key << word.split("").sort
            hash[new_key[0]] = [word]
            # binding.pry
        end

        sorted_letters_hash.each do |key, value|

            item_to_match.each do |word_to_match|

                if word_to_match.split("").sort == key

                    ret_arr << word_to_match
                    
                end
                
            end
            
        end

        # binding.pry
        return ret_arr.flatten
        
    end
    
end