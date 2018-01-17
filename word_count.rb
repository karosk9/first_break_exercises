def word_count(any_phrase)
	splitted = any_phrase.downcase!.split(/ /)
	counted_words = Hash.new(0) 

	splitted.each do |word|
	counted_words[word] += 1
	end

	counted_words.each {|word,occurences| print "#{word} => #{occurences} "}
	puts ""
end

word_count('foo Foo bar bar Bar')
word_count('Losowy ciąg znaków ciąg') 