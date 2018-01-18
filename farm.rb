class Animal 
	def give_sound
	end
end

class Dog < Animal
	def give_sound
		"hau hau"
	end
end

class Cat < Animal
	def give_sound
		"miau miau"
	end
end

class Goose < Animal
	def give_sound
		"gę gę"
	end
end

class Duck < Animal
	def give_sound
		"kwa kwa"
	end
end


class Farm
	attr_reader :animals

	def initialize(animals)
		@animals = animals
	end

	def give_sounds
		animals.each{ |animal| puts animal.give_sound}
	end
end

array_with_animals = [
	dog = Dog.new,
	cat = Cat.new,
	duck = Duck.new,
	goose = Goose.new]

animals_on_farm = Farm.new(array_with_animals)
animals_on_farm.give_sounds
