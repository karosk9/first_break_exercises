# Zaimplementuj funkcję, która wypisze, który z graczy wygrywa w grze papier, kamień,
# nożyce. Funkcja powinna przyjmować dwa argumenty odpowiadające wyborom graczy i
# działać w następujący sposób:

def rock_paper_scissors(first_figure='', second_figure='')
	puts "Zagraj: rock, paper, scissors"
	puts "Figura pierwszgo gracza"
	first_figure = gets.chomp
	puts "Figura drugiego gracza"
	second_figure = gets.chomp

	if first_figure==second_figure
		"remis"
	elsif first_figure=='rock'
		case second_figure
		when 'paper' then 'gracz 2 wygrywa'
		when 'scissors' then 'gracz 1 wygrywa'
		end
	elsif first_figure=='paper'
		case second_figure
		when 'rock' then 'gracz 1 wygrywa'
		when 'scissors' then 'gracz 2 wygrywa'
		end
	elsif first_figure=='scissors'
		case second_figure
		when 'rock' then 'gracz 2 wygrywa'
		when 'paper' then 'gracz 1 wygrywa'
		end
	else
	"wrong input\ntype one of figures: rock, paper, scissors"
	end

end
puts rock_paper_scissors	# czy ten program ma wyglądać w ten sposób, czy szukać opcji bardziej zwięzłego zapisu?