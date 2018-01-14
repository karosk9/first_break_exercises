def avg_array(*arrays)
	arg_lengths = arrays.collect {|array| array.length}
	single_arg_length = arg_lengths[0]
	if arg_lengths.uniq.length != 1
		puts "tablice mają różne długości" 
	end

	nr_of_arg = arrays.length
	table_nr = 0
	index_in_table = 0
	sum_array = Array.new(single_arg_length, 0)

	while index_in_table < single_arg_length
			while table_nr < nr_of_arg
				sum_array[index_in_table] += arrays[table_nr][index_in_table]
				table_nr += 1
			end
		table_nr = 0	
		index_in_table += 1
	end
	print sum_array.collect { |x| x/nr_of_arg.to_f} 
end

avg_array([1,2,3,4], [4,5,6,7])
avg_array([1, 5, 3, 22], [12, 22, 13, 5], [5, 12, 24, 5], [14, 40, 5, 17])

