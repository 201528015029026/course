# When done, submit this entire file.

# Part 1

def sum arr
  # YOUR CODE HERE
  arrsum=0
  for i in arr
     arrsum+=i
  end
   return arrsum
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.size==0
  	return 0
  elsif arr.size==1
  	return arr[0]
  else 
 	 max1=arr[0]
  	 max2=arr[1]
 	 i=2
  	 while i<arr.size
  		if(max1<max2)
  	    	if(arr[i]>max1)
  	   			max1=arr[i]
  	   		end
  		else 
  			if(arr[i]>max2)
  		 		max2=arr[i]
  			end
  		end
  		i=i+1
	end
  end
  return max1+max2 
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  for i in 0...arr.size
    for j in 0...i
    	if(arr[i]+arr[j]==n)
    		return true
    	end
    end
  end
  if(arr.size==0 && n==0)
  	return false
  end
  return false
end
# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s=~/^[^aeiouAEIOU]/
  	if(s =~ /^[a-zA-Z]/)
  		return true
  	end
  	return false
  else 
  	return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if(s =~ /^[1|0]*$/)
  	if(s=='0' || s=='00' || s.end_with?('00'))
  		return true
  	end
  	return false
  else
  	return false
  end
end 

# Part 3

class BookInStock
	def initialize(isbn,price)
		if(isbn.empty? || price<=0)
			raise ArgumentError ,'isbn or price ArgumentError'
		end
		@isbn =isbn
		@price =price
	end
	attr_accessor:isbn
	attr_accessor:price
	def price_as_string
		return '$'+'%.2f' % price
	end
end

