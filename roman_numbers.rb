def to_roman(arabic_number)
	dividers = [1000, 500, 100, 50, 10, 5, 1]
	roman_symbols = %w[M D C L X V I]
	in_roman = ""
	divided_number = arabic_number
	index=0	
	loop do
		(divided_number/dividers[index]).times {in_roman += roman_symbols[index]}
		divided_number = divided_number%dividers[index]
		index+=1
	break if index == dividers.length
	end

	replacements_hash = { 'VIIII' => 'IX',  'IIII' => 'IV',  'XXXX' => 'XL',  'CCCC' => 'CD'}
	replacements_hash.each { |replacement, replaced| in_roman.gsub!(replacement, replaced)}

	# in_roman.gsub!(/[VIIII-IIII-XXXX-CCCC]/, replacements_hash) # => próbowałam to zapisać w ten sposób, ale wyskakuje mi błąd 'empty range in char class' i nie wiem co jest źle
	print "#{in_roman}\n"
end

to_roman(2457)
to_roman(1457)
to_roman(4)
to_roman(5)
to_roman(29)
