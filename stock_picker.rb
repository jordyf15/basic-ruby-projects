def stock_picker(stocks)
  days = []
  stocks.each_with_index do |buy_stock, buy_index|
    for sell_index in buy_index+1..stocks.size-1
      days.push({buy: buy_index, sell: sell_index, profit: stocks[sell_index]-buy_stock})
    end
  end
  max_profit = days.max {|day_a, day_b| day_a[:profit]<=> day_b[:profit]}
  [max_profit[:buy], max_profit[:sell]]
end

p stock_picker([17,3,6,9,15,8,6,1,10])