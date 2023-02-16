require 'pry-byebug'

def stock_picker(array)
  profits = Hash.new
  array.each_with_index do |price, day|
    og_day = day
    while day < array.length
      day_profit = array[day] - price
      profits[day_profit] = [og_day, day]
      day += 1
    end
  end
  biggest_profit = profits.max_by { |key, value| key}
  p biggest_profit[1]
end

stock_picker([17,3,6,9,15,8,6,1,10])