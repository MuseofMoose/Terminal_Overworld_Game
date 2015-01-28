require "./repl_game_text.rb"
include GameStrings #The strings for the repl_story_game.

module AuxillaryMethods
	#Keeps track of several variables and outputs them for testing purposes.
	def test_conditions(character,axis)
		puts "Y index: " + character.y_position.to_s
		puts "X index: " + character.x_position.to_s
	end

	def user_input(char_name) #Takes in user input and checks for the end game condition
		user_input = gets.chomp.downcase
		if(user_input == "n") #If the user inputs "n", quits the game.
			puts "Thanks for playing, #{char_name}!" #Thanks the user for playing in both text...
			convert_to_voice("Thanks for playing, #{char_name}!") #and computer voice.
			print "\033c"
			exit
		end
		return user_input
	end

	#Takes in a string of text and converts it to computer generated voice output.
	def convert_to_voice(string_to_say)
		if(RUBY_PLATFORM.include?("linux")) #Checks if os is linux...
			print `espeak "#{string_to_say}"` #and converts text to cg voice output for linux systems.
		elsif(RUBY_PLATFORM.include?("darwin")) #Checks if os is darwin-based(mac)...
			print `say "#{string_to_say}"` #and converts text to cg voice ouput for mac systems.
		else
			#Check if there is a text-to-voice function for windows computers.
		end
	end

	#Initiates a story game when called. Now updated with recursion to handle invalid inputs. Woo.
	def repl_story_game()
		intro() #The intro text paragraph.

		#Takes in user input 1 and continues the story based on the input.
		final_input_1 = story_choice1(gets.chomp.downcase) 
		transition1() #Outputs the first transition paragraph.

		#Takes in user input 2 and contiunes the story based on the input.
		final_input_2 = story_choice2(final_input_1,gets.chomp.downcase)
		transition2() #Outputs the second transition paragraph.

		#Takes in user input 3 and continues the story based on the input.
		final_input_3 = story_choice3(final_input_1,final_input_2,gets.chomp.downcase)
		conclusion() #The final, concluding, paragraph.

		puts "\nPress any key to return to the world map."
		gets.chomp #Allows the user to finish reading the story before returning to the world map.
	end
end