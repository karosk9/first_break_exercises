def sum_array(any_array)
	any_array.delete(any_array.max)
	any_array.delete(any_array.min)
	any_array.sum {|element| element}
end

puts sum_array([1, 2, 3, 4])
puts sum_array([12, 4, 0, -8])
puts sum_array([12, 4])
puts sum_array([120, 7, 145, -10, -15])