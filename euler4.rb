def check_pallindrome(num)
	if num.to_s.reverse == num.to_s
		return true
	end
	false
end

def has_factors(num)
	for x in 100..num
		if num % x == 0 
			return true
		end 
	end
	false
end

def find_pallindrome
	range = 998001..0
	(range.first).downto(range.last).each do |i|
		if check_pallindrome(i)
			if has_factors(i)
				puts i
				break
			end
		end
	end
end

puts has_factors(997799)