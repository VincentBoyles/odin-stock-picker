def stock_picker (prices)

profitable = {}
(0..prices.length-1).each do |i|
  (i..prices.length-1).each do |j|
    value = prices[j] - prices[i]
    if value > 0
      profitable[[i, j]] = value
    end
  end
end

profitable.select do |k, v| 
    puts [k] if v == profitable.values.max()
  end
end




