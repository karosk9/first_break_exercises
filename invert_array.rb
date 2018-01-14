def invert_array(any_array)
	new_array = any_array.map{|element| element = -element}
	print "#{new_array}\n"
	new_array
end

invert_array([1, 2, 3, 4, 5])
invert_array([1, -2, 3, -4, 5])
invert_array([0])
