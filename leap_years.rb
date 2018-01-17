def leap_years?(*years)
	leap_yr = []
	years[0].select do |yr| 
		leap_year?(yr) ? leap_yr << yr : next
	end
	print "#{leap_yr}\n"
end

def leap_year?(yr)
	yr % 400 == 0 || yr % 4 == 0 && yr % 100 != 0 ? true : false
end

 leap_years?([2011, 2012, 2015, 2016, 2018]) 
 leap_years?((2000..2100).to_a)