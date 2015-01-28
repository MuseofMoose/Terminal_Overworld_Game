require "./over_world_auxillary_methods.rb"
require "./character_class.rb"
require "./enemy_class.rb"
require "./world_class.rb"
require "./world_map_v2.rb"
include AuxillaryMethods
include WorldMap
########################################################################
##########################BEGIN MAIN METHOD#############################
########################################################################

#Prompts the user for a character name.
puts "Please enter the name of your character."
convert_to_voice("Please enter the name of your character.")
char_name = gets.chomp.capitalize
convert_to_voice("Welcome, #{char_name}.")

world1 = World.new(game_world) #Initializes the world. 

#Initializes the player's character.
player_character = Character.new((world1.world_map.length-1)/2,(world1.world_map[0].length-1)/2,char_name,world1)
world1.draw_world(player_character.y_position,player_character.x_position) #Draws the world for the first time.

#The main game loop.
loop{
	player_character.input_logic(user_input(char_name),player_character,world1) #Runs game logic based on the user's input
}
