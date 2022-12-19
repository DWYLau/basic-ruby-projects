def stock_picker(prices)
  max_profit = 0
  profit = []
  best_days = []
  
  prices.each_with_index do |buy_price, buy_day|
    prices.each_with_index do |sell_price, sell_day|
      if buy_day < sell_day && sell_price - buy_price >= max_profit
        profit.push(sell_price - buy_price)
        max_profit = profit.max
        best_days[0] = buy_day
        best_days[1] = sell_day
      end
    end
  end
  p max_profit
  p best_days
end

stock_prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]
stock_picker(stock_prices)



