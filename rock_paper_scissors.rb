def rock_paper_scissors(figure='', computer_figure='')
	figures = %w[scissors paper rock]
	loop do
		computer_figure = figures.sample
		puts "Type your figure: scissors, paper or rock"
		figure = gets.chomp
		raise 'ArgumentError' if figures.include?(figure) == false
		puts "Player: #{figure}, Computer: #{computer_figure}"
		puts "the draw, play once again" if figure==computer_figure
		break if figure != computer_figure
	end

	case figure
		when 'rock'
			figures_arr = %w[scissors rock paper]
		when 'paper'
			figures_arr = %w[rock paper scissors]
		when 'scissors'
			figures_arr = %w[o scissors rock]
	end

	comparition = Hash.new
	figures_arr.each {|figure,value| comparition[figure]=figures_arr.index(figure)}

	if comparition[figure]>comparition[computer_figure]
		puts "You are the winner"
	else
		puts "Computer won"
	end
end

rock_paper_scissors
