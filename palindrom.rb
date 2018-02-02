def palindrome?(any_string)
	str = any_string.downcase.delete(' ').split(//)
	result = false
	str.each_with_index do |char, id|
		str[id] == str[-(id+1)] ? result = true : result = false && break
	end
	puts result
end

palindrome?('Kobyła ma mały bok')
palindrome?('kajak')
palindrome?('kajak i wiosło')