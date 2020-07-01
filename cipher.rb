# Caesar Cipher written in Ruby
# Created by: Shane Gilbert

def caesar_cipher(word, shift) 

  #Checks if 'word' is a String 
  unless word.is_a? String
    return "Input was not text"
  end

  #Initializes a temp word
  new_word = ""

  #Creates an array of ascii numbers for each letter in 'word'
  word_array = word.codepoints.to_a

  #Loops over each letter in 'word' and manipulates
  for i in 0..word_array.length-1

    #Keeps track of the letter casing
    lowercase = false
    if word_array[i] >= 97 && word_array[i] <= 122
      lowercase = true
    else
      lowercase = false
    end

    #Adds the shift to the letter (checks if the character is a letter and not a symbol or space)
    if word_array[i] >= 65 && word_array[i] <= 122
      word_array[i] += shift
    end

    # Checks character ascii values
    if word_array[i] > 122 && lowercase == true
      word_array[i] -= 26
    elsif word_array[i] > 90 && lowercase == false
      word_array[i] -= 26
    end
    new_word += word_array[i].chr
  end
  return new_word
end

p caesar_cipher("What a string!", 5)