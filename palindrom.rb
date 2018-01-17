def palindrome?(any_string)
	str = any_string.downcase.delete(' ')
	i = 0
	while i < str.length/2
		if str[i] == str[-(i+1)]
			result = true
		elsif str[i] != str[-i]	
			result = false
			break
		end
		i += 1
	end
	result
end

palindrome?('Kobyła ma mały bok')
palindrome?('kajak')
palindrome?('kajak i wiosło')