#program finds differences between two  chains
def hamming_distance(first_chain, sec_chain)
	chain1 = first_chain.to_s 
	chain2 = sec_chain.to_s
	chain_distance = 0
	n=0
	if chain1.length==chain2.length
		while n<chain1.length
			if chain1[n] != chain2[n]
				chain_distance = chain_distance+1
			end
			n=n+1
		end
		chain_distance
	else 
		nil
	end
end

puts hamming_distance("GAGCCTACTAACGGGAT","CATCGTAATGACGGCCT")
puts hamming_distance(258,498)
puts hamming_distance(258,"CATCGTAATGACGGCCT")