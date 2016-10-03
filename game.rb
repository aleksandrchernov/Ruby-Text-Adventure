#Define some items below.
current_version = 1.0

#Define some classes below.

#Player Naming class
class PlayerName
	def initialize
		puts "Created new Player!"
	end

	def set_name(new_name)
		@name = new_name
	end

	def get_name
		@name
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
		
		case option
		when "1"
			puts "New Game"
			NewGame.initialize
		when "2"
			puts "Load Game"
		when "3"
			puts "Exit game"
		else
			puts "Press 1, 2 or 3"
			GameMenu.options
		end			
	end
end

#New Game class
class NewGame
	def self.initialize
		puts "Welcome brave warrior!"
		puts "What is your name?"
		user_input_playerName = gets.chomp	
		playerName = PlayerName.new
		playerName.set_name(user_input_playerName)
		puts "Good luck on your adventure " + playerName.get_name
	end
end	

puts "Welcome to Ruby Text Adventure! v" + current_version.to_s
load "graphics.rb"
GameMenu.initialize
GameMenu.options


