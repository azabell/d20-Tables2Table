#!/usr/bin/ruby
require 'green_shoes'

#a = Array[" dark", "stormy", "smelly"]
#s = "The quick  brown    fox jumped. "
#puts "It was a #{String(s+a.join(", ")).squeeze(" ")} night.\n\n"

class Outside_the_shoe
#   def initialize()
#     @s = ""
#   end
	def some_other_string(msg)
		@s = " :the logic is: "+msg.to_s
	end
	def some_string(msg)
		if rand()<0.5 
		s = "FRIEND" 
		else
		s = msg.to_s+" winner! "
		end
		return s
	end
end

Shoes.app :title => "two radios and an answer", 
          :width => 650, 
          :height => 240 do
	this_is = Outside_the_shoe.new

	background gray
	@in_a_room = false
	flow :width => 98, :margin_left => 3, :margin_right => 5 do # frustratingly hackish box-for-a-box
		background gold
		flow :width => 90 do
		@level = [
				[para("1", :width => 18, :align => "center"), radio(:checked => true)],
				[para("11", :width => 28, :align => "right"), radio],
				[para("2", :width => 18, :align => "center"), radio],
				[para("12", :width => 28, :align => "right"), radio],
				[para("3", :width => 18, :align => "center"), radio],
				[para("13", :width => 28, :align => "right"), radio],
				[para("4", :width => 18, :align => "center"), radio],
				[para("14", :width => 28, :align => "right"), radio],
				[para("5", :width => 18, :align => "center"), radio],
				[para("15", :width => 28, :align => "right"), radio],
				[para("6", :width => 18, :align => "center"), radio],
				[para("16", :width => 28, :align => "right"), radio],
				[para("7", :width => 18, :align => "center"), radio],
				[para("17", :width => 28, :align => "right"), radio],
				[para("8", :width => 18, :align => "center"), radio],
				[para("18", :width => 28, :align => "right"), radio],
				[para("9", :width => 18, :align => "center"), radio],
				[para("19", :width => 28, :align => "right"), radio],
				[para("10", :width => 18), radio],
				[para("20", :width => 28, :align => "right"), radio]]
		end
	end
	flow :width => 430, :height => 600 do
		# @level.each {|a,b| 
			# puts a.text
			# puts a.text if b.checked?
		# } # provides the text value provided in front of the radio button
		background tomato
		border orange, :strokewidth => 5
		flow :width => 110, :height => 75, :margin_left => 3, :margin_right => 5 do # frustratingly hackish box-for-a-box
			background yellow
			fill tomato
			nostroke
			rect(110+98-5,0,5,75)
			flow :width => 100 do
				para "With", :width => 70
				radio do @in_a_room = true end
				para "Without", :width => 70 
				radio :checked => true do @in_a_room = false end
				b_x = button("hidden").hide
#				b2 = button("do nothing")
			end
		end
		fill lightgreen
		nostroke
		box1 = rect(100,73,120,40).hide
		b1 = button("Do it").move(105, 45)
		b1.click {
			@level.each {|a,b| @master_level_is = "lvl"+a.text if b.checked? }
			@is_with.replace("")
			@is_with.replace("yes it has "+this_is.some_other_string(@in_a_room)) if @in_a_room 
			because_its_random = this_is.some_string(@master_level_is)
			if because_its_random.include? "FRIEND" 
				box1.show
				@is_now.style(:strong)
			else
				box1.hide
#				@is_now.style(:
			end
			@is_now.replace(because_its_random)
		}
		the_doors = flow :width => 300, :height => 75 do
				@is_with = para("is with?", :width => 250)
		end
		the_contents = stack do
				@is_now = para("blank")
		end
	end
end


#Shoes.app( :title => "Some dum titl", :width => 250, :height => 250) do
#	background black
#	fill white
#	oval top: 20, left: 20, radius: 160
#	para "It was a #{String(s+a.join(", ")).squeeze(" ")} night.\n\n", fill: yellow, stroke: green
#	para "This text is still black"
#	stroke red
#	star 100, 100, fill: gradient(blue, orange), angle: 45
#end
