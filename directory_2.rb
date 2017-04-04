students = [
	{name: "Dr. Hannibal Lecter", cohort: :november, hobbies: :eating, "country of birth": :UK, height: 172},
	{name: "Darth Vader", cohort: :november, hobbies: :drinking, "country of birth": :UK, height: 173},
	{name: "Nurse Ratched", cohort: :november, hobbies: :swimming, "country of birth": :UK, height: 174},
	{name: "Michael Corleone", cohort: :november, hobbies: :running, "country of birth": :UK, height: 175},
	{name: "Alex DeLarge", cohort: :november, hobbies: :eating, "country of birth": :Scotland, height: 176},
	{name: "The Wicked Witch of the West", cohort: :november, hobbies: :football, "country of birth": :UK, height: 177},
	{name: "Terminator", cohort: :november, hobbies: :cycling, "country of birth": :UK, height: 178},
	{name: "Freddy Krueger", cohort: :november, hobbies: :eating, "country of birth": :UK, height: 179},
	{name: "The Joker", cohort: :november, hobbies: :cycling, "country of birth": :UK, height: 180},
	{name: "Joffrey Baratheon", cohort: :november, hobbies: :running, "country of birth": :UK, height: 181},
	{name: "Norman Bates", cohort: :november, hobbies: :eating, "country of birth": :UK, height: 182},
]

def print_header
	puts "The students of Villains Academy".center(50)
	puts "-------------".center(50)
end

def print_names names
	names.each_with_index do |name, index|
		puts "#{index}. #{name[:name]} (#{name[:cohort]} cohort)"
	end
end

def print_names_while(names)
	count = 0
	array_count = names.count
		while count < array_count
			puts names[count-1]
			count += 1
		end
end

def print_footer names
	puts "overall, we have #{names.count} great students"
end

def print_names_c names
 		names.each_with_index do |name, index|
 			first_name = name[:name]
	 			if first_name[0] == "S"
					puts "#{index}. #{name[:name]} (#{name[:cohort]} cohort)"
				end
		end
end

def print_names_short names
 		names.each_with_index do |name, index|
 			first_name = name[:name]
	 			if first_name.length <= 12
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

def input_students_v2
	students = []
	add_mode = true
		while add_mode
			puts "Please enter the name of student (cannot be blank)"
			name = gets.chomp
			  while name.empty?
					puts "Please enter the name of student (cannot be blank)"
					name = gets.chomp
				end
			
			puts "Please enter student start cohort (if blank will default to January)"
			x = gets.chomp
				if x.empty? 
					cohort = :january
				else
					cohort = x.to_sym
				end
			
			puts "Did you make a typo (y/n)"
			typo = gets.chomp
				if typo == 'n'
					students << {name: name, cohort: cohort}
					puts "Now we have #{students.count} student(s)"
					puts students
				else 
					puts "ok, cancelling input mode"
				end

		 	puts "Add another student (y/n)"
				answer = gets.chomp
				if answer == 'n' 
					add_mode = false
				end
		end
	return students
end

def list_cohorts array
	 cohort_arr = []
	 cohort_arr = array.map.uniq { |x| x[:jan] }
	 puts cohort_arr
end

def print_cohorts students, cohorts
	new_students = []
  cohorts.each do |y|
		students.each do |x|
			if x[:cohort] == y
		  	new_students << x
		  end
		end
		puts new_students 
	end
end

def interactive_menu
  students = []
  loop do print_menu
    selection = gets.chomp
    case selection
    when "1"
      students = input_students_v2
    when "2" 
    	show_students
    when "3"
  		save_students
    when "9"
      exit # this will cause the program to terminate
    else
      puts "I don't know what you meant, try again"
    end
  end
end

def show_students
  print_header
  print(students)
  print_footer(students)
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "9. Exit" # 9 because we'll be adding more items  
end

def save_students
  # open the file for writing
  file = File.open("students.csv", "w")
  # iterate over the array of students
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
end


# ask name
#   check if blank, insist on name
# ask cohort
#   if cohort is blank assign defaault month jan
# ask if typo
#   if typo don't shovel
#

interactive_menu
#students = input_students_v2
#print_header
#print_names_while(students)
#print_footer(students)
#list_cohorts(students)
#print_cohorts(students,cohort_arr)
