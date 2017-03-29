# MAC0218 HW1
#
# Ricardo Akira Tanaka 9778856
# Rubens Douglas Roccia 9


# Part 1:

def sum arr

end

def max_2_sum arr

end

def sum_to_n? arr, n

end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
  def isbn=(isbn)
    if isbn == nil or isbn.size == 0
      raise ArgumentError.new('Erro no ISBN')
    end
    @isbn = isbn
  end

  def price=(price)
    if price <= 0
      raise ArgumentError.new('Erro no preco')
    end
    @price = price
  end

  def isbn
    "#{@isbn}"
  end

  def price
    "#{@price}"
  end

  def initialize(isbn, price)
    self.isbn = isbn
    self.price = price
  end

  def price_as_string
    "$#{@price.round(2)}"
    sprintf("$s%#.2f", @price)
  end
end
