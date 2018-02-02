def accum(any_str)
  tab = any_str.split(%r{\s*})
  str = ""
  tab.each_with_index {|x,index| str += "#{x*(index+1)}-".capitalize}  
  # drugi sposób zapisu bloku: 
  # tab.each {|a| str += "#{a*(tab.index(a)+1)}-".capitalize} 
  # Który lepszy? ten wcześniejszy wydaje mi się bardziej czytelny
  str.chop
end

print "#{accum("alop")}\n"