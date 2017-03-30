# Ricardo Akira Tanaka 9778856
# Rubens Douglas Roccia 9793590

# When done, submit this entire file to the autograder.

# Part 1

def sum arr
	sum = 0
	return 0 if arr.empty? == true
	for i in 0..(arr.size-1)
		sum += arr[i]
	end
	return sum
end

def max_2_sum arr
	return 0 if arr.empty? == true
	return arr[0] if arr.size == 1
	if arr[0] > arr[1]
		x = arr[0]
		y = arr[1]
	else
		x = arr[1]
		y = arr[0]
	end
	for i in 2..(arr.size-1)
		if arr[i] > x
			x = arr[i]
		elsif arr[i] > y
			y = arr[i]
		end
	end
	sum = x + y
	return sum
end

def sum_to_n? arr, n
	return false if arr.size < 2
	for i in 0..arr.size-2
		for j in i+1..arr.size-1
			return true if arr[i] + arr[j] == n
		end
	end
	return false
end

# Part 2

def hello(name)
	message = "Hello, "
	message << name
	return message
end

def starts_with_consonant? s
	return false if s.empty? == true
	return false if (s[0] =~ /\w/) == nil
	return false if (s[0] =~ /\D/) == nil
	return false if s.start_with?("a","e","i","o","u") == true
	return false if s.start_with?("A","E","I","O","U") == true
	return true
end

def binary_multiple_of_4? s
	return false if s.empty? == true
	return false if (s =~ /\D/) != nil
	return false if (s =~ /2/) != nil
	return false if (s =~ /3/) != nil
	return false if (s =~ /4/) != nil
	return false if (s =~ /5/) != nil
	return false if (s =~ /6/) != nil
	return false if (s =~ /7/) != nil
	return false if (s =~ /8/) != nil
	return false if (s =~ /9/) != nil
	return true if s == '0'
	return false if s.end_with?("100") == false
	return true
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
		@isbn
	end

	def price
		@price
	end

	def initialize(isbn, price)
		self.isbn = isbn
		self.price = price
	end

	def price_as_string
		"$#{@price.round(2)}"
		sprintf("$%#.2f", @price)
	end
end
