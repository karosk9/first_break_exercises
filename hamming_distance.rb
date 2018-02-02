#program finds differences between two  chains
def hamming_distance(chain1, chain2)
	first = chain1.to_s.split(//) 
	second = chain2.to_s.split(//)
	chain_distance = 0
	raise ArgumentError, 'arguments lengths are not equal' if first.length != second.length 
	first.each_with_index {|char, id|  chain_distance += 1 if char != second[id]}
	chain_distance
	rescue 
		nil
end


puts hamming_distance("GAGCCTACTAACGGGAT","CATCGTAATGACGGCCT")
puts hamming_distance(258,498)
puts hamming_distance(258,"CATCGTAATGACGGCCT")