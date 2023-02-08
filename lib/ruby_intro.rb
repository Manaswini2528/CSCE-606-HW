# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  total = 0
  arr.each do |i|
    total+=i
  end 
  return total
end


def max_2_sum(arr)
  # YOUR CODE HERE
  if arr.size == 0
    return 0
  end
  if arr.size == 1
    return arr[0]
  end
  return arr.sort[-1]+arr.sort[-2]
  end


def sum_to_n?(arr, number)
  # YOUR CODE HERE
  dict = {}
  for i in 0..(arr.length-1)
    if dict.key?(arr[i])
      return true
    end
    dict[number-arr[i]] = i
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
  vowels = ["a","e","i","o","u"]
  if vowels.include? string.downcase[0] 
    return false
  else
    if string[0] =~ /[[:alpha:]]/
      return true
    else
      return false
    end
  end    
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  if !(string =~ /\A[-+]?[0-9]+\z/)
    return false
  end
  if string.to_i % 4 == 0
    return true
  else
    return false
  end    
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
  attr_accessor :isbn, :price
 
  def initialize isbn,price
    @isbn = isbn
    @price = price
    if @price <= 0 or @isbn.empty? 
      raise ArgumentError
    end
  end  
    
  def price_as_string 
    return "$#{'%.2f' %  @price}"
      
  end
  
end
