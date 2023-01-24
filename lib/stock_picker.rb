=begin
Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day.
It should return a pair of days representing the min day to buy and the min day to sell. Days start at 0.

> stock_picker([17,3,6,9,15,8,6,1,10])
=> [1,4]  # for a profit of $15 - $3 == $12
Quick Tips:

You need to buy before you can sell
Pay attention to edge cases like when the lowest day is the last day or the highest day is the first day.   
=end


def stock_picker(array)
  profit_max = 0
  days = []
  array.each_with_index do |buy_price, buy_index|
    array.each_with_index do |sell_price, sell_index|
      profit = sell_price - buy_price

      if profit > profit_max && buy_index < sell_index
          profit_max = profit
          days = [buy_index, sell_index]
      end
    end
  end
  return days
end