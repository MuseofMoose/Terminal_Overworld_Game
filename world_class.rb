#Responsible for creating worlds.
class World
	def initialize(map_array) 
		@size = 20	#Size is currently static, but can be made dynamic. Use word_builder.rb.
		@world_map = map_array
	end

	attr_accessor :world_map #Allows the world map to be read and edited.

	def read_specific_index(y_index,x_index) #Returns a specific value in the map array.
		return @world_map[y_index][x_index]
	end

	def write_specific_index(y_index,x_index,value) #Changes a specific value in the map array.
		@world_map[y_index][x_index] = value
	end

	#Responsible for drawing the map after each move and when the game starts.
	def draw_world(char_y_position,char_x_position)
		print "\033c" #Clears the screen.
		#Draws a subsection of the game_world array based on the row/col variables.
		@world_map[(char_y_position-7)..(char_y_position+7)].each{|x|
			x[(char_x_position-3)..(char_x_position+3)].each{|num|
				print num
			}
			puts ""
		}
		
	end
end
