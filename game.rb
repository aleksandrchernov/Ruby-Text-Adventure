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
		puts "You journey through the woods and encounter your first foe!"
		LoadBoredElf.initialize
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

#Bored Elf Class also containing the battle system within
class LoadBoredElf
	def self.initialize
		load "BoredElf.rb"
		puts "What would you like to do?"
		LoadBoredElf.options
	end

		def self.options
			option = gets.chomp.to_s

			case option
		when "1"
			puts "You attack the Bored Elf!"
			puts "He is too quick to hit!"
			LoadBoredElf.options
		when "2"
			puts "You try to run!"
			puts "If you try to run you will never hear the end of it from your friends..."
			LoadBoredElf.options
		when "3"
			puts "You start crying."
			puts "The Bored Elf slaps you and tells you to man up!"
			LoadBoredElf.options
		when "4"
			puts "You cast a fire magic spell on the elf"
			puts "The Bored Elf catches on fire and dies."
			#Put the next NPC encounter class in here.
		else
			puts "Please press 1,2,3 or 4"
			LoadBoredElf.options
		end		
	end
end
puts "Welcome to Ruby Text Adventure! v" + current_version.to_s
GameScreen.initialize
GameMenu.initialize
GameMenu.options


