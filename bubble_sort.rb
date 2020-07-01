# Bubble sort algorithm written in Ruby
# Takes in a number array and uses the bubble sort algorithm to sort the array from low to high
# Returns the sorted array

def bubble_sort(unsorted_array) 
  #Stores temp value for swap
  temp_value = 0
  #Loops through the entire array once
  for j in 0..unsorted_array.length-1
    #Loops through the entire array once more but goes to length-j since those values should be largest
    for i in 0..unsorted_array.length-j
      #Checks for overflow
      if (i + 1) < unsorted_array.length-j
        #Checks if value needs to be sorted
        if unsorted_array[i] > unsorted_array[i + 1]
          #Swaps the two values
          temp_value = unsorted_array[i + 1]
          unsorted_array[i + 1] = unsorted_array[i]
          unsorted_array[i] = temp_value
        end
      else break
      end
    end
  end
  return unsorted_array
end

#Test for method
p bubble_sort([4,3,78,2,0,2])