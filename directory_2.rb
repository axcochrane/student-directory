# create an array method
#
#
#
#
#
students = [
	["Dr. Hannibal Lecter", :november]
	["Darth Vader", :november]
	["Nurse Ratched", :november]
	["Michael Corleone", :november]
	["Alex DeLarge", :november]
	["The Wicked Witch of the West", :november]
	["Terminator", :november]
	["Freddy Krueger", :november]
	["The Joker", :november]
	["Joffrey Baratheon", :november]
	["Norman Bates" :november]
]

def print_header
	puts "The students of Villains Academy"
	puts "-------------"
end

def print_names names
	names.each do |name|
		puts name
	end
end

def print_footer names
	puts "overall, we have #{names.count} great students"
end


print_header
print_names(students)
print_footer(students)

