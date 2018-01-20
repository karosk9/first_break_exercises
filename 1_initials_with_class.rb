class Initials
	attr_reader :full_name

  def initialize(full_name)
  	@full_name = full_name
  end

  def to_s
  	full_name.split.map { |part| part.chr.upcase}.join 
  end
end

names = [
Initials.new('mis puchatek'),
Initials.new('kot klakier'),
Initials.new('Jan kowalski'),
Initials.new('król julian madagaskar')
]

puts names