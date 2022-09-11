# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  else
    answer = 0
    for i in arr
      answer = answer + i
    end
    return answer
  end
end

def max_2_sum(arr)
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    max1 = arr.sort[-1]
    max2 = arr.sort[-2]
    sum = max1 + max2
    return sum
  end
end

def sum_to_n?(arr, number)
  # YOUR CODE HERE
  d = {}
  for i in 0..(arr.length-1)
    if d.key?(arr[i])
      return true
    end
    d[number-arr[i]] = i
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name.to_s
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
  if string.length == 0
    return false
  end
  arr = ["A", "E", "I", "O", "U"]
  first = string.to_s[0].upcase
  if arr.include? first
    return false
  end
  if first =~ /[[:alpha:]]/
    return true
  else
    return false
  end
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  if not(string.is_a? Integer) and !(string =~ /\A[-+]?[0-1]+\z/)
    return false
  end
  string = string.to_i
  if string%4 == 0
    return true
  else
   return false
  end
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
  def initialize(isbn,price)
    if isbn.size == 0 || price<=0
      raise(ArgumentError)
    end
    @isbn = isbn
    @price = price
  end
  
  def isbn
    @isbn
  end

  def price
    @price
  end

  def isbn=(new_isbn)
    @isbn = new_isbn
  end

  def price=(new_price)
    @price = new_price
  end

  def price_as_string
    format("$%0.2f",@price)
  end
end
