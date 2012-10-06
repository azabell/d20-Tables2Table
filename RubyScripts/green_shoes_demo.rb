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
	@opt = "l1"
	@opt2 = false
	flow :width => 45 do
		background gold
		para "1", :width => 20, :align => "center"
		radio :first, :checked => true do @opt = "l1" end
		para "2", :width => 20, :align => "center"
		radio :first do @opt = "l2" end
		para "3", :width => 20, :align => "center"
		radio :first do @opt = "l3" end
		para "4", :width => 20, :align => "center"
		radio :first do @opt = "l4" end
		para "5", :width => 20, :align => "center"
		radio :first do @opt = "l5" end
		para "6", :width => 20, :align => "center"
		radio :first do @opt = "l6" end
		para "7", :width => 20, :align => "center"
		radio :first do @opt = "l7" end
		para "8", :width => 20, :align => "center"
		radio :first do @opt = "l8" end
		para "9", :width => 20, :align => "center"
		radio :first do @opt = "l9" end
		para "10", :width => 20
		radio :first do @opt = "l10" end
	end
	flow :width => 55 do
		background gold
#		i = 11
#		while i <=20 do
#			para i, :width => 22
#			radio :first do @opt = "l"+i.to_s end
#			i += 1
#		end
		para "11", :width => 28, :align => "right"
		radio :first do @opt = "l11" end
		para "12", :width => 28, :align => "right"
		radio :first do @opt = "l12" end
		para "13", :width => 28, :align => "right"
		radio :first do @opt = "l13" end
		para "14", :width => 28, :align => "right"
		radio :first do @opt = "l14" end
		para "15", :width => 28, :align => "right"
		radio :first do @opt = "l15" end
		para "16", :width => 28, :align => "right"
		radio :first do @opt = "l16" end
		para "17", :width => 28, :align => "right"
		radio :first do @opt = "l17" end
		para "18", :width => 28, :align => "right"
		radio :first do @opt = "l18" end
		para "19", :width => 28, :align => "right"
		radio :first do @opt = "l19" end
		para "20", :width => 28, :align => "right"
		radio :first do @opt = "l20" end
	end
	show_answer = flow :width => 430, :height => 600 do
		background tomato
		@b1 = button("Do it").move(105, 45)
		tf = flow :width => 120 do
			background yellow
			para "With", :width => 80
			radio :second do @opt2 = true end
			para "Without", :width => 80 
			radio :second, :checked => true do @opt2 = false end
			b_x = button("hidden").hide
			b2 = button("do nothing")
		end
		fill lightgreen
		nostroke
		box1 = rect(100,106,120,40).hide
		@is_with = para("is with?", :width => 300)
		@is_now = para("blank")
		@b1.click {
			@is_with.replace("")
			@is_with.replace("yes it has "+this_is.some_other_string(@opt2)) if @opt2 
			because_its_random = this_is.some_string(@opt)
			@is_now.hide.replace(because_its_random)
			if because_its_random.include? "FRIEND" 
				box1.show 
			else
				box1.hide
			end
			@is_now.show
		}
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

