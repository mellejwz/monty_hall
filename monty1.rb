user_choice, swap, a, b=nil, nil, 0, 0
doors=['car','goat','goat'].shuffle
while a<1
	puts "Choose a door (1-3)"
	user_choice = gets.chomp.to_i-1
	if user_choice<0 || user_choice>2
		puts 'Please choose door 1, 2 or 3'
	else
		a=1
	end
end
puts "You chose door "+(user_choice+1).to_s+"!"
quizmaster_choice=nil
door_left=nil
doors.each_with_index do |door, index|
	if index!=user_choice && door=='goat'
		quizmaster_choice=index
	end
end
puts "There's a goat behind door "+(quizmaster_choice+1).to_s+'.'
while b<1
	puts "Do you want to change to the other door? (yes/no)"
	swap=gets.chomp.to_s
	if swap=='yes' || swap=='no'
		b=1
	else
		puts 'Please answer yes or no.'
	end
end
chosen_door=doors[user_choice]
if (swap=='yes' && chosen_door=='goat') || (swap=='no' && chosen_door=='car')
	won='car'
else
	won='goat'
end
puts 'You have won'.ljust(15, '.')
puts 'a'.center(15, '.')
puts won.to_s.ljust(15, '!')