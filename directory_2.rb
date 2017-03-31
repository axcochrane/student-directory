# create an array method
#
#
#
#
#
students = [
	{name: "Dr. Hannibal Lecter", cohort: :november},
	{name: "Darth Vader", cohort: :november},
	{name: "Nurse Ratched", cohort: :november},
	{name: "Michael Corleone", cohort: :november},
	{name: "Alex DeLarge", cohort: :november},
	{name: "The Wicked Witch of the West", cohort: :november},
	{name: "Terminator", cohort: :november},
	{name: "Freddy Krueger", cohort: :november},
	{name: "The Joker", cohort: :november},
	{name: "Joffrey Baratheon", cohort: :november},
	{name: "Norman Bates", cohort: :november},
]

def print_header
	puts "The students of Villains Academy"
	puts "-------------"
end

def print_names names
	names.each_with_index do |name, index|
		puts "#{index}. #{name[:name]} (#{name[:cohort]} cohort)"
	end
end

def print_footer names
	puts "overall, we have #{names.count} great students"
end

def print_names_condition names
 		names.each_with_index do |name, index|
 			first_name = name[:name]
 			if first_name[0] == "S"
		puts "#{index}. #{name[:name]} (#{name[:cohort]} cohort)"
			end
	end
end


def input_students
	puts "Please enter the name of the students"
	puts "To finish simply hit enter twice"

	students = []
	name = gets.chomp

	while !name.empty? do
		students << {name: name, cohort: :november}
		puts "Now we have #{students.count} student(s)"
		name = gets.chomp
	end
	students
end

students = input_students

print_header
print_names_condition(students)
print_footer(students)

