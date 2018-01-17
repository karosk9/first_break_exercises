def queue_time(times,till_nr)
	tills = Array.new(till_nr, 0) # =>  index+1 to numer kasy, wartość to pozostały czas obsługi
	operation_time = 0
		while times.length>0	
			tills.map! do |till|
				if till == 0
				 	till += times[0]  	# dodaje czas obsługi do istniejących pustych kas
					times.shift			# usuwa pierwszą komórkę z tablicy times, która już jest obsługiwana - czyli usuwa osobę z kolejki
					elsif till!=0		# by map! nie zwracał nil, jeśli nie ma czego nadpisać
						till = till				
				end
			end
			print "\nczas obsługi klientów przy kasach: \n#{tills.join(' min, ')} min \n"
			puts "ilość osób w kolejce: #{times.length}"
			
			a = tills.min
			operation_time += tills.min
			
			tills.map! do |till|
				till -= a
			end
			puts "kasa nr #{tills.index(0)+1} jest wolna"
		
		end
		operation_time = operation_time+tills.max
		print "\nnie ma więcej klientów\nczas obsługi wszystkich klientów: #{operation_time} minut.\n"

	operation_time
end
queue_time([10, 2, 3, 3], 2)
queue_time([5,3,4], 1)
queue_time([2, 3, 10], 2)
queue_time([2, 3, 10, 6, 8, 1, 4, 7], 3)