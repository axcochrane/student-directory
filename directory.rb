student_count = 11
students = [
"The students of Villains Academy",
"-------------",
"Dr. Hannibal Lecter",
"Darth Vader",
"Nurse Ratched",
"Michael Corleone",
"Alex DeLarge",
"The Wicked Witch of the West",
"Terminator",
"Freddy Krueger",
"The Joker",
"Joffrey Baratheon",
"Norman Bates"
]

students.each do |student|
  puts student
end

print "overall, we have #{{students.count}} great students"
