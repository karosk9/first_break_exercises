def backspaces(any_string)
	while any_string.include?('#')
		any_string.gsub!(/.#/,'')
	end
	puts any_string
end

backspaces("abc#d##d")
backspaces("abc##d######")
backspaces("######")
backspaces("")
