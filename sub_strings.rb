# Substring method written in Ruby that takes in a word (or sentence) and an array of valid substrings.
# Returns a hash listing each substring found in the original string and how many times it was found
# Author: Shane Gilbert

def substrings (search_word_list, dictionary)
  #Hash to track word and its count
  word_count_hash = Hash.new
  #Turns search_word_list into an array
  search_word_list_array = search_word_list.split(" ")
  
  #Loops through the search_word_list
  search_word_list_array.each do |search_word|
    search_word.downcase!
    #Loops through the dictionary
    dictionary.each do |dictionary_word| 
      #Checks if dictionary_word is in search_word
      if search_word.include? dictionary_word
        #Checks if the key already exists and increments count by 1 if it does
        if word_count_hash.key?(dictionary_word)
          word_count_hash[dictionary_word] += 1
        else 
          #Sets the value of the key to 1 if it doesn't already exist
          word_count_hash[dictionary_word] = 1
        end
      end
    end
  end
  return word_count_hash
end

# Examples to test method
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)
p substrings("below", dictionary)