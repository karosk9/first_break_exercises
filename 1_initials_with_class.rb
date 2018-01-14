class Initials
	attr_accessor :full_name

  def initialize(full_name)
  	@full_name = full_name
  end

  def to_s
  	str = ""
  	full_name.split(" ").each do |part|
  	str += part[0].upcase
  	end
  	str
  end
end

names = [
Initials.new('mis puchatek'),
Initials.new('kot klakier'),
Initials.new('Jan kowalski'),
Initials.new('król julian madagaskar')
]

puts names