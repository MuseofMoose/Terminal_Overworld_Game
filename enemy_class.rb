#Defines an enemy character.
class Enemy
	def initialize(y_position,x_position,char_y_position,char_x_position,world)
		@y_position = y_position
		@x_position = x_position
		@char_y_position = char_y_position
		@char_x_position = char_x_position
		@health = 5
		@speed = 1
		@current_world = world
	end

	attr_accessor :health
	attr_reader :speed
	attr_reader :y_position
	attr_reader :x_position

	def add_to_world
		if(@current_world.read_specific_index(@y_position,@x_position) == "[    ]")
			@current_world.write_specific_index(@y_position,@x_position,"[ \u2639  ]") 
			@current_world.draw_world(@char_y_position,@char_x_position)
		end
	end

	def move_enemy(new_y,new_x,char_y,char_x,world)
		#Logic for calculating positioning based on relative location to player. GOES HERE.
		

		if(world.world_map[new_y][new_x]=="[    ]") #If the new space is empty, the enemy moves.
			@current_world[@y_position][@x_position] = "[    ]" #Empties the spot where the enemy used to be.
			@x_position = new_x #Stores the new x value
			@y_position = new_y #Stores the new y value
			@current_world[@y_position][@x_position] = "[ \u2639  ]" #Places the enemy in the new location
			return true
		else #If the space is occupied, the enemy does not move.
			return false
		end

	end
end