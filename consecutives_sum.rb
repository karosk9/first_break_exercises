def consecutives_sum(array)
	p array.chunk_while {|i,j| i==j}.map {|x| x.sum}
end

consecutives_sum([1, 4, 4, 4, 0, 4, 3, 3, 1])
consecutives_sum([1, 1, 7, 7, 3])
consecutives_sum([-5, -5, 7, 7, 12, 0])