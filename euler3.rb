def check_prime(num)
	for x in 2...num do 
		return false if num % x == 0
	end
	true
end

def find_smallest_prime_factor(num)
	for x in 2..num do
		if num % x == 0 && check_prime(x)
			return x
		end
	end
end

def get_largest_prime_factor(num)
	array = []
	
	while num > 1
		prime = find_smallest_prime_factor(num)
		array << prime
		num /= prime
	end

	puts array.last
end

get_largest_prime_factor(100)