def complementary_dna(dna_chain)
	dna_chain.tr('ATCG','TAGC')
end
puts complementary_dna("ACCCGGGT")