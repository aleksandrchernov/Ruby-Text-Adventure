#Define some items below.
current_version = 1.0

#Define some classes below.

#Player Naming class
class PlayerName
	def initialize
		puts "Created new Player name!"
	end

	def set_name(new_name)
		@name = new_name
	end

	def name=(new_name)
		if new_name.is_a?(Numeric)
			puts "Name cant be a number!"
		else	
			@name = new_name
		end
	end	
end	

#Game Menu class
class GameMenu
	def self.initialize
		puts "1)New game." 
		puts "2)Load game.(not working)" 
		puts "3)Exit."
	end

	def self.options
		option = gets.chomp.to_s
		#puts option
		case option
		when "1"
			puts "New Game"
		when "2"
			puts "Load Game"
		when "3"
			puts "Exit game"
		else
			puts "Press 1, 2 or 3"
		end			
	end
end

puts "Welcome to Ruby Text Adventure! v" + current_version.to_s
GameMenu.initialize
GameMenu.options
