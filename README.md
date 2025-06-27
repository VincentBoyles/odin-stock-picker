# 📈 Stock Picker (Ruby)

This Ruby method calculates the best days to buy and sell a stock to maximize your profit, given a list of stock prices over time.

---

## 💡 What It Does

- Accepts an array of integers where each value represents a stock price on a given day.
- Compares every possible pair of buy/sell days (with the condition that you must buy before you sell).
- Calculates the profit for each valid pair.
- Returns the pair of days that results in the **maximum profit**.

---

## 📊 Example

```ruby
stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
# => [[1, 4]]
# Explanation: Buy on day 1 (price = 3), sell on day 4 (price = 15)
```

---

## 🧾 Code

```ruby
def stock_picker(prices)
  profitable = {}

  (0..prices.length - 1).each do |i|
    (i..prices.length - 1).each do |j|
      value = prices[j] - prices[i]
      if value > 0
        profitable[[i, j]] = value
      end
    end
  end

  profitable.select do |k, v| 
    return [k] if v == profitable.values.max()
  end
end
```

---

## 🔍 Concepts Practiced

- Hash mapping of day pairs to potential profits
- Finding the maximum value in a hash
- Returning optimal result based on comparison

---


## 📚 Learn More

- [Ruby Hash Documentation](https://ruby-doc.org/core/Hash.html)
- [Ruby Ranges](https://ruby-doc.org/core/Range.html)

---

## 📄 License

This code is shared **for educational purposes only**.

You're welcome to use, modify, and share it in personal and academic projects.  
Please do not redistribute or use for commercial purposes without permission.

---

Built to strengthen problem-solving and hashes in Ruby. 💎📊🧠
