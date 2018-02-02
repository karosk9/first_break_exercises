def initials(full_name)
	init = full_name.split.map {|part| part.chr.upcase}.join
	puts init
end

initials('miś puchatek')
initials('krolowa jadwiga')
initials('Jan kowalski')
initials('król julian madagaskar')


