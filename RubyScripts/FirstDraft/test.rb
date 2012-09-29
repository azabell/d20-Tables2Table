#!/usr/bin/ruby
# foo

a = Array["a","b",["x","y","z"],"c"]

# playing with each_index
a.each_index{ |primary_element| 
	sub_array = a.at(primary_element)
	puts "#{primary_element} #{sub_array}"
	sub_array = [sub_array] unless sub_array.is_a?(Array) # would preserve a hash as [hash]
	sub_array.each_index{ |secondary_element|
		puts " #{a.at(primary_element)} #{sub_array.at(secondary_element)}"
	}
}

# playing with element directly
a.each{ |primary|
	sub_array = primary
	puts "#{sub_array}"
	sub_array = Array(sub_array) # Kernel method
	sub_array.each{ |secondary|
		puts " #{primary} #{secondary}"
	}
}
