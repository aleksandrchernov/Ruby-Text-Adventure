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
		puts "1)New Game." 
		puts "2)About The Game." 
		puts "3)Exit."
	end

	def self.options
		option = gets.chomp.to_s
		
		case option
		when "1"
			puts "Starting New Game"
			NewGame.initialize
		when "2"
			puts "About The Game:"
			puts "Text Adventure Game made by Aleksandr Chernov!"
			GameMenu.initialize
			GameMenu.options
		when "3"
			puts "Exiting Game..."
			Kernel.exit
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

#Game Screen class
class GameScreen
	def self.initialize
		file = File.open "graphics.txt"
		1.times{ file.gets.chomp}
		p $_
		2.times{ file.gets.chomp}
		p $_
		3.times{ file.gets.chomp}
		p $_
		4.times{ file.gets.chomp}
		p $_
		file.close
	end
end
puts "Welcome to Ruby Text Adventure! v" + current_version.to_s
GameScreen.initialize
GameMenu.initialize
GameMenu.options


