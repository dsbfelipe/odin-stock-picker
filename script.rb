def stock_picker(array)
  min_price = array[0]
  min_day = 0
  pair = [0,1]
  max_profit = array[1] - array[0]

  array.each_with_index do |current_price, current_day|
    current_profit = current_price - min_price

    if current_profit > max_profit
      max_profit = current_profit
      pair = [min_day, current_day]
    end

    if current_price < min_price
      min_price = current_price
      min_day = current_day
    end
  end 

  pair
end

puts stock_picker([17,3,6,9,15,8,6,1,10])