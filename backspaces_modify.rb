
def backspaces(str)
	tab = str.split(//)
	k=0
	while k<tab.length
		if tab[k] == "#"
			tab.delete_at(k)
			tab.delete_at(k-1)
		k=0
		end
	k+=1
	end
	print "\"#{tab.join}\"\n"
end

backspaces("abc#d##d")
backspaces("abc##d######")
backspaces("######")
backspaces("")
