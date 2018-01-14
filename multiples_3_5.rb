# Napisz metodę, która dla podanego argument n znajdzie wszystkie liczby całkowite w
# przedziale od 0 do n, które są podzielne przez 3 lub 5 i zwróci sumę tych liczb.

def multiples(n)
	k = 0
	dividers = []
	while k<=n
		if k%3==0 || k%5==0
			dividers << k
		end
		k=k+1
	end
	puts dividers.sum
end
multiples(10)
multiples(15)
multiples(20)