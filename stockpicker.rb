# Odin Ruby stock picker
# https://www.theodinproject.com/lessons/ruby-stock-picker

def stock_picker(array)
  max_profit = 0
  buy_index = 0
  sell_index = 0

  array.each_with_index do |day1, index1|
    array[index1 + 1 .. -1].each_with_index do |day2, index2|
      profit = day2 - day1
      if profit > max_profit
        max_profit = profit
        buy_index = index1
        sell_index = index2 + index1 + 1
      end
    end
  end

  p [buy_index, sell_index]
end

stock_picker([17,3,6,9,15,8,6,1,10]) # => [1, 4]
# stock_picker([3, 2, 1, 8]) # simpler arr