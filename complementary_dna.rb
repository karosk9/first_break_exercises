def complementary_dna(dna_chain)
	compl_dna = dna_chain.split(//).each do |alkali|
		case alkali
		when 'A' then print 'T'
		when 'T' then print 'A'
		when 'C' then print 'G'
		when 'G' then print 'C'
		end
	end
	puts ""
	compl_dna
end
complementary_dna("ACCCGGGT")