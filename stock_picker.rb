# stock_picker takes in an array as an argument and determines the optimal day to buy and sell stocks for maximum profit.
# Returns an array. The first value in the array is the day to buy and the second value is the day to sell.
# Author: Shane Gilbert
def stock_picker(number_array)
  #Stores current profit to be gained
  profit = 0
  #Stores the maximum profit from the combination of previous days
  max_profit = 0
  #Stores the days in which max profit can be had. stored_days[0] is buy day. stored_days[1] is sell day
  stored_days = [0, 0]

  #Loops through all numbers in array. Compares each iteration against all numbers from the iteration to the end of the array for max profit
  for i in 0..number_array.length-1
    # p "Day #{i}: "
    for j in i..number_array.length-1
      if number_array[j] < number_array[i]
        break
      else
        profit = number_array[j] - number_array[i]
        # p "buy: " + number_array[i].to_s + " sell: " + number_array[j].to_s + " profit: " + profit.to_s
        if profit > max_profit
          max_profit = profit
          stored_days[0] = i
          stored_days[1] = j
        end
      end
    end
  end
  return stored_days
end

p stock_picker([17,3,6,9,15,8,6,1,10])