# Napisz metodę, która dla podanego argument n znajdzie wszystkie liczby całkowite w
# przedziale od 0 do n, które są podzielne przez 3 lub 5 i zwróci sumę tych liczb.

def multiples(n)
	dividers = []
	0.upto(n) do |number|
		dividers << number if number%3==0 || number%5==0
	end
	puts dividers.sum
end
multiples(10)
multiples(15)
multiples(20)
