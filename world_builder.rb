
size = 19

def build_world(size)
	array = Array.new((size+6)*2){Array.new(size+6)}

	array.each_with_index do |x,index|
		if ((0..5).include?(index)||(array.size-6..array.size-1).include?(index))
			x.each_with_index{|y,index| x[index] = "# ## #"}
		elsif index.odd?
			x.each_with_index do |y,index| 
				if ((0..2).include?(index)||(array[0].size-3..array[0].size-1).include?(index))
					x[index] = "# ## #"
				else
					x[index] = "[    ]"
				end
			end
		else
			x.each_with_index do |y,index| 
				if ((0..2).include?(index)||(array[0].size-3..array[0].size-1).include?(index))
					x[index] = "# ## #"
				else
					x[index] = "------"
				end
			end
		end
	end
end


array.each{|x|
	x.each{|y| print y}
	puts "\n"
}