def code_morse(phrase_to_code)
	phrase_to_code.downcase!

	morse_code = {
	'a' => '.-',	
	'b' => '-...', 
	'c' => '-.-.', 
	'd' => '-..', 
	'e' => '.', 
	'f' => '..-.', 
	'g' => '--.', 
	'h' => '....', 
	'i' => '..',	
	'j' => '.---', 
	'k' => '-.-', 
	'l' => '.-..', 
	'm' => '--',	
	'n' => '-.',	
	'o' => '---', 
	'p' => '.--.', 
	'q' => '--.-', 
	'r' => '.-.', 
	's' => '...', 
	't' => '-', 
	'u' => '..-', 
	'v' => '...-', 
	'w' => '.--', 
	'x' => '-..-', 
	'y' => '-.--', 
	'z' => '--..', 

	'ą' =>	'.-.-',
	'ć' =>	'-.-..',
	'ę' =>	'..-..',
	'ł' =>	'.-..-',
	'ń' =>	'--.--',
	'ó' =>	'---.',
	'ś' =>	'...-...',
	'ż' =>	'--..-.',
	'ź' =>	'--..-',

	'0' => '-----',
	'1' => '.----',
	'2' => '..---',
	'3' => '...--',
	'4' => '....-',
	'5' => '.....',
	'6' => '-....',
	'7' => '--...',
	'8' => '---..',
	'9' => '----.',
	'.' => '.-.-.-',  
	',' => '--..--',
	"'" => '.----.', 
	%["] => '.-..-.',
	'_' => '..--.-',
	':' => '---...',
	';' => '-.-.-.',
	'?' => '..--..',
	'!' => '-.-.--',
	'–' => '-....-',
	'+' => '.-.-.',
	'/' => '-..-.',
	'(' => '-.--.',
	')' => '-.--.-',
	'=' => '-...-',
	'@' => '.--.-.',
	' ' => ' '
	}	

	coded_phrase = ""
	phrase_to_code.split(//).each { |character| coded_phrase += "#{morse_code[character]} "}
	coded_phrase
end

str_to_code = %["Ruby (wym. /'ru:bi/) – interpretowany, w pełni obiektowy i dynamicznie typowany język programowania stworzony w 1995 roku przez Yukihiro Matsumoto (pseudonim Matz). W języku angielskim ruby oznacza rubin."]
code = code_morse(str_to_code)
puts "zakodowany tekst: \n#{code}"

def decode_morse(phrase_to_decode)
	
	morse_decoder = {
	'.-' => 	'a',
	'-...' =>  'b',
	'-.-.' =>  'c',
	'-..' =>  'd',
	'.' =>  'e',
	'..-.' =>  'f',
	'--.' =>  'g',
	'....' =>  'h',
	'..' => 	'i',
	'.---' =>  'j',
	'-.-' =>  'k',
	'.-..' =>  'l',
	'--' => 	'm',
	'-.' => 	'n',
	'---' =>  'o',
	'.--.' =>  'p',
	'--.-' =>  'q',
	'.-.' =>  'r',
	'...' =>  's',
	'-' =>  't',
	'..-' =>  'u',
	'...-' =>  'v',
	'.--' =>  'w',
	'-..-' =>  'x',
	'-.--' =>  'y',
	'--..' =>  'z',

	'.-.-' => 'ą', 
	'-.-..' => 'ć', 
	'..-..' => 'ę', 
	'.-..-' => 'ł', 
	'--.--' => 'ń', 
	'---.' => 'ó', 
	'...-...' => 'ś', 
	'--..-.' => 'ż', 
	'--..-' => 'ź', 
	'-----' => '0', 
	'.----' => '1', 
	'..---' => '2', 
	'...--' => '3', 
	'....-' => '4', 
	'.....' => '5', 
	'-....' => '6', 
	'--...' => '7', 
	'---..' => '8', 
	'----.' => '9', 
	'.-.-.-' => '.', 
	'--..--' => ',', 
	'.----.' => "'",
	'.-..-.' => "\"",
	'..--.-' => '_', 
	'---...' => ':', 
	'-.-.-.' => ';', 
	'..--..' => '?', 
	'-.-.--' => '!', 
	'-....-' => '–', 
	'.-.-.' => '+', 
	'-..-.' => '/', 
	'-.--.' => '(', 
	'-.--.-' => ')', 
	'-...-' => '=', 
	'.--.-.' => '@', 
	'' => ' '
	}	

	decoded_phrase = ""
	phrase_to_decode.split(/ /).each { |word_in_morse| decoded_phrase += "#{morse_decoder[word_in_morse]}"}
	decoded_phrase
end

puts "odkodowany tekst: \n#{decode_morse(code)}"
