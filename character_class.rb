require "./over_world_auxillary_methods.rb"
include AuxillaryMethods

#Defines the playable character.
class Character
	#Adds the character to the world map.
	def initialize(y_position,x_position,name,world)
		@x_position = x_position
		@y_position = y_position
		@name = name
		add_to_world(world)
	end

	#Returns the current x or y position of the Character
	attr_accessor :x_position, :y_position, :current_world

	#Used to move the character to a new space
	def move_char(new_y, new_x,world)
		if(world.world_map[new_y][new_x]=="[    ]") #If the new space is empty, the character moves.
			world.world_map[@y_position][@x_position] = "[    ]" #Empties the spot where the character used to be.
			@x_position = new_x #Stores the new x value
			@y_position = new_y #Stores the new y value
			world.world_map[@y_position][@x_position] = "[ \u263B  ]" #Places the character in the new location
			return true
		elsif(world.world_map[new_y][new_x]=="[ ↂ  ]") #If the space has this unicode symbol...
			repl_story_game() #run the repl_story_game.
			return false
		else #If the space is occupied, the character does not move.
			return false
		end
	end

	#Defines user input and what it does.
	def input_logic(input,character,world)
		
		#"Up" command logic
		if(input=="w")
			move_char(@y_position-2,@x_position,world)#Move the character up
			world.draw_world(@y_position,@x_position)#and the map is drawn.
			test_conditions(character,"y") #Test conditions

		#"Down" command logic	
		elsif(input=="s")
			move_char(@y_position+2,@x_position,world)#Move the character down
			
			world.draw_world(@y_position,@x_position) #and the map is drawn.
			test_conditions(character,"y") #Test conditions

		#"Left" command logic	
		elsif(input=="a")
			move_char(@y_position,@x_position-1,world)#Move the character left
			
			world.draw_world(@y_position,@x_position) #and the map is drawn.
			test_conditions(character,"x") #Test conditions

		#"Right" command logic	
		elsif(input=="d") 
			move_char(@y_position,@x_position+1,world) #Move the character right
			
			world.draw_world(@y_position,@x_position) #and the map is drawn
			test_conditions(character,"x") #Test conditions
		elsif(input=="0") #For adding an enemy to the map.
			enemy = Enemy.new(23,8,@y_position,@x_position,world)
			enemy.add_to_world
		end
	end

	#######
	private
	def add_to_world(world) #Adds a newly created character to the current world.
		world.world_map[@y_position][@x_position] = "[ \u263B  ]"
		@current_world = world
	end
end
