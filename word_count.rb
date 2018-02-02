def word_count(any_phrase)
	splitted = any_phrase.downcase!.split(/ /)
	counted_words = Hash.new(0) 
	splitted.each {|word| counted_words[word] += 1}
	counted_words
end

puts word_count('foo Foo bar bar Bar')
puts word_count('Losowy ciąg znaków ciąg') 