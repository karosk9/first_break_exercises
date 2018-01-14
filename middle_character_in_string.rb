def middle(any_string)
	str_length = any_string.length
	middle_character = str_length/2
	if str_length%2 ==0
		middle = "#{any_string[(middle_character-1)]}#{any_string[(middle_character)]}"
	else
		middle = "#{any_string[(middle_character)]}"
	end
	middle
end

puts middle('karolina')
puts middle('kubek')
