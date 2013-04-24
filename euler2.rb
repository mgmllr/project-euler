array = [1, 2]
sum = 2

while array.last < 4000000 do 
	new_num = (array[-1] + array[-2])
	array << new_num
	if new_num % 2 == 0
		sum += new_num
	end
end

puts sum