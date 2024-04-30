# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  min_price = Float::INFINITY
  max_profit = 0

  prices.each do |price|
    if price < min_price
      min_price = price
    elsif price - min_price > max_profit
      max_profit = price - min_price
    end
  end

  max_profit
end
