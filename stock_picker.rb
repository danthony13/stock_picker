#Function that takes a set of stock prices as an array and returns the best days to buy and sell
def stock_picker(array)
       buy = 0
       sell = 0
       profit = 0
       #Nested loop allows you to compare values from the array to each other
        (0..(array.length - 2)).each do |buy_day|
            ((buy_day + 1)..array.length - 1).each do |sell_day|
            difference = array[sell_day] - array[buy_day]
            
            if difference > profit
              buy = buy_day
              sell = sell_day
              profit = difference
            end
            end
       end
 puts "Buy on #{array[buy]} and sell on #{array[sell]} for #{profit} dollars of profit "
  end 
  stock_picker([17,3,6,9,15,8,6,1,10])