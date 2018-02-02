def queue_time(times, tills)
	total_time = 0
	tills_a = Array.new(tills) 
	tills_h = Hash.new
	tills_a.each_index { |id|
		tills_h["kasa nr #{id+1}"]=0
	}
	while times.length != 0
		tills_h.each { |till,time| tills_h[till]+=times.shift if time ==0}
		minimal_time = tills_h.values.min
		total_time += minimal_time		
		tills_h.each {|till, time| tills_h[till] -= minimal_time}
	end
	total_time += tills_h.values.max
	total_time
end

puts queue_time([10, 2, 3, 3], 2)
puts queue_time([5,3,4], 1)
puts queue_time([2, 3, 10], 2)
puts queue_time([2, 3, 10, 6, 8, 1, 4, 7], 3)