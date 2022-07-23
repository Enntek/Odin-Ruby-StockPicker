# Odin Ruby stock picker
# https://www.theodinproject.com/lessons/ruby-stock-picker

def stock_picker(array)

  #outer loop
  solution_arr = array.each_with_index.reduce([0, 0]) do |arr, (element, index)|
    
    p index                                                                     # extra iteration, the last iteration can be eliminated

    buy_price = array[index]
    
    #inner loop
    max_profit_of_subarr = array[ index+1 .. -1 ].reduce(0) do |high, nth_price| # there's an extra iteration because of index+1, fixes?

      profit = nth_price - buy_price
      if profit > high 
        high = profit 
      end
      high
    end

    overall_max_profit = arr[1]
    optimal_buy_price = arr[0]

    if max_profit_of_subarr > overall_max_profit
      overall_max_profit = max_profit_of_subarr
      optimal_buy_price = buy_price
    end

    [optimal_buy_price, overall_max_profit]
  end

  solution_buy_price = solution_arr[0]
  solution_max_profit = solution_arr[1]
  solution_sell_price = solution_max_profit + solution_buy_price

  buy_index = array.find_index(solution_buy_price)
  sell_index = array.find_index(solution_sell_price)
  p [buy_index, sell_index]
end

# stock_picker([17,3,6,9,15,8,6,1,10]) # => [1, 4]
stock_picker([3, 2, 1, 8]) # simpler arr



# smaller_array = my_array.slice(1, my_array.length-1) # sub_array is next day to end of array
# smaller_array = my_array[ 0 + 1 .. -1 ] # another way to write slices
# p smaller_array

# smaller_array = my_array.slice(-1) # last
# smaller_array = my_array.slice(0) # first value
# smaller_array = my_array.slice(1, 3) # slice of array
# smaller_array = my_array[0..2] # shorter version of slice
# smaller_array = my_array[0..-1] # start to last
