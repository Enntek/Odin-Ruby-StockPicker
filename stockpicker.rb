# Odin Ruby stock picker
# https://www.theodinproject.com/lessons/ruby-stock-picker

def stock_picker(array)

  # get reduce to create sub arrays
  array.each_with_index.reduce([]) do |arr, (element, index)|
    buy_price = array[index]
    result = array[ index+1 .. -1 ].reduce(0) do |high, nth_price|
      profit = nth_price - buy_price
      if profit > high 
        high = profit 
      end
      high
    end
    [buy_price, result]
  end



  # this will find highest profit given price and ONE array
  
end

# p stock_picker([17,3,6,9,15,8,6,1,10]) # => [1, 4]
stock_picker([3,2,1,8]) # simpler arr



# smaller_array = my_array.slice(1, my_array.length-1) # sub_array is next day to end of array
# smaller_array = my_array[ 0 + 1 .. -1 ] # another way to write slices
# p smaller_array

# smaller_array = my_array.slice(-1) # last
# smaller_array = my_array.slice(0) # first value
# smaller_array = my_array.slice(1, 3) # slice of array
# smaller_array = my_array[0..2] # shorter version of slice
# smaller_array = my_array[0..-1] # start to last
