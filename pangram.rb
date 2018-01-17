# Pangram to zdanie, w którym przynajmniej raz pojawia się każda litera alfabetu.
# Napisz metodę, która sprawdzi czy podany ciąg znaków jest pangramem dla języka
# polskiego.

def pangram?(string)
	string.downcase!
	result = ''	
	polish_alphabet = %w[a ą b c ć d e ę f g  h i j k l ł m n ń o ó p r s ś t u w y z ź ż]
	
	polish_alphabet.each do |letter| 
		if string.include?(letter) 
			result = "to jest pangram"
		else
			result = "to nie pangram"
		break
		end
	end
	puts result
end
pangram? ('Dość błazeństw, żrą mój pęk luźnych fig')
pangram? ('Losowy ciąg znaków')