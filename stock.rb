def stock_picker(stock_prices)
    current = [0,0] # [buy, sell] sell - buy
    stock_prices.each_with_index{|stock, buy| buy.upto(stock_prices.length - 1){|sell| current = (stock_prices[sell] - stock_prices[buy]) > (stock_prices[current[1]] - stock_prices[current[0]])? current = [buy,sell]: current = current}}
    #gets buy then checks sell dates after buy gets best buy sell
    return current;
end
puts stock_picker([17,3,6,9,15,8,6,1,10])