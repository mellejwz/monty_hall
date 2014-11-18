#save the goats and the car in an array and shuffle them
doors = ['car', 'goat', 'goat'].shuffle

#ask the use to choose a door and save their choice in a variable
puts "Choose a door (1-3)"
user_choice = gets.chomp.to_i-1

#confirm their selection
puts "You chose door "+(user_choice+1).to_s+"!"

#let the program choose a door that has a goat behind it and one that isn't the same as the user's choice
quizmaster_choice = nil
doors.each_with_index do |door, index|
	if index != user_choice && door == 'goat'
		quizmaster_choice = index
	end
end

#confirm the quizmaster's selection and ask the user if they want to change to the other door and save their choice in a variable
puts "There's a goat behind door "+(quizmaster_choice+1).to_s + '.'
puts "Do you want to change to the other door? (yes/no)"
swap = gets.chomp

#check if the user has won a car or a goat
if swap == 'yes' && doors[user_choice] == 'goat'
	won = 'car'
else
	won = 'goat'
end

#tell the user they have won the car or a goat
puts 'You have won'.ljust(20, '.')
puts 'a'.center(20, '.')
puts won.to_s.ljust(20, '!')