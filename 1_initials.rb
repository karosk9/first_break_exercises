def initials(full_name)
	full_name.split(" ").each {|part| print part[0].upcase}
	puts ""
end

initials('miś puchatek')
initials('krolowa jadwiga')
initials('Jan kowalski')
initials('król julian madagaskar')

