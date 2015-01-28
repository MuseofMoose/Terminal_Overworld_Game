module GameStrings
	def intro()
		puts "You slowly open your eyes to find yourself in a dank and gloomy dungeon."
		puts "As you stand up and stretch your stiff limbs, you hear footsteps approaching."
		puts "Menacing footsteps. In a panic, you scour the room and find a metal pipe"
		puts "lying in one corner of the room and a large rock in the other. You only have" 
		puts "time to pick up one item! Which do you choose (\"rock\" or \"pipe\")?\n\n"
	end

	def story_choice1(choice1)
		puts "\n"
		if(choice1=="rock")
			puts "You grab the rock and lie in wait. Just as you see something turn the"
			puts "corner you leap forward with the rock raised. Just as the rock is about"
			puts "to connect you bring your arm to an abrupt halt. It's your sister, Sarah!"
			return choice1
		elsif(choice1=="pipe")
			puts "You grab the pipe and assume ready stance. Just as you see something turn"
			puts "the corner you step forward and swing the pipe downward with both hands. You"
			puts "halt your swing mere inches from the person's face. It's your sister, Sarah!"
			return choice1
		else
			puts "Invalid input! Please select \"rock\" or \"pipe\"."
			story_choice1(choose_again=gets.chomp.downcase) #Recursive call to handle invalid inputs.
		end
	end

	def transition1()
		puts "\nIn spite of the close call, she hurriedly tells you that you need to get" 
		puts "out of here. She points down the hall and pushes you in that direction." 
		puts "Sensing the gravity of the situation you break into a sprint in that direction."
		puts "As you reach the end of the hall you see a door. You try to turn the handle"
		puts "but it won't budge! It's time to bust it down. How do you break down the" 
		puts "door (\"kick\" or \"ram\" it)?\n\n"
	end

	def story_choice2(choice1,choice2)
		puts "\n"
		if(choice2=="kick")
			puts "You pull your best \"300\" impression and \"sparta kick\" the door as hard as"
			puts "you possibly can. No good. You try again and feel something start to give. You"
			puts "give it one more kick and the door breaks free of its hinges and slams to the"
			puts "ground. Before you lies a staircase and, hopefully, your way out of here. You"
			puts "proceed up the staircase."
			return choice2
		elsif(choice2=="ram")
			puts "Remembering your door-busting days of old, you take a few steps back, get a"
			puts "running start, and slam into the door shoulder first. The door makes an audible"
			puts "\"crack\" but remains in place. Powered by sheer stubbornness, you ram into it"
			puts "once more and break the door down. With a smug grin on your face, you climb"
			puts "the stairs before you."
			return choice2
		else
			puts "Invalid input! Please select \"kick\" or \"ram\"."
			story_choice2(choice1,choose_again=gets.chomp.downcase) #Recursive call to handle invalid inputs.
		end
	end

	def transition2()
		puts "\nJust as you're about to give up on climbing the seemingly endless staircase,"
		puts "your foot awkwardly slams down on flat ground. You have reached the top of the"
		puts "staircase. Unfortunately, two doors lie before you, both labeled with a word"
		puts "you only dreamed you would see: \"Exit\". Which door do you choose (the \"right\""
		puts "door or the \"left\" door)?\n\n"
	end

	def story_choice3(choice1,choice2,choice3)
		puts "\n"
		if(choice3=="right")
			puts "You open the right door and are confronted by a mini-skirt clad man wielding"
			puts "a neon green katana. He demands that you submit and accept your inevitable" 
			puts "demise. Unfazed, you raise your #{choice1} and prepare for battle. He slashes at" 
			puts "your head but you dodge to the side and chuck the #{choice1} at him. Bullseye! You"
			puts "get him right in the head and he stands there in a daze. It's time. Finish him."
			puts "Gathering your strength you #{choice2} him with all your might. He falls to"
			puts "the ground in defeat. You step over him and walk to the door on the other"
			puts "side of the room."
			return choice3
		elsif(choice3=="left")
			puts "You open the left door and are confronted by a velociraptor. You laugh at"
			puts "such a pitiful challenge until you notice something. Something terrible. The"
			puts "velociraptor is wearing an eye-patch. In a panic, you grab your #{choice1} and"
			puts "whack the velociraptor over the head multiple times. As you breathlessly" 
			puts "inspect the damage you inflicted, you realize that the eye-patch-wearing"
			puts "velociraptor was nothing more than a eerily realistic inflatable doll." 
			puts "Embarrassed, you walk to the door on the other side of the room."
			return choice3
		else
			puts "Invalid input! Please select \"right\" or \"left\"."
			story_choice3(choice1,choice2,choose_again=gets.chomp.downcase) #Recursive call to handle invalid inputs.
		end
	end

	def conclusion()
		puts "\nYou take a deep breath and turn the knob. The door swings open as a gust of"
		puts "wind blows into the room. Fresh air. You exit the room and walk off into the"
		puts "distance. Your escape was successful."
	end
end