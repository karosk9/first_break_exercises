# Napisz funkcję, ktora przyjmie liczbę całkowitą i pozamienia jej cyfry miejscami w taki
# sposób, aby utworzyć jak najwyższą liczbę.

def highest_number(number)
	new_number= ""
	number.to_s.split(//).sort.reverse.each {|element| new_number += element}
	puts new_number
end

highest_number(132)
highest_number(1464)
highest_number(165423)