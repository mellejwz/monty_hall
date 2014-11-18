doors = ['car', 'goat', 'goat'].shuffle

puts "Choose a door (1-3)"
user_choice = gets.chomp.to_i-1

puts "You chose door "+(user_choice+1).to_s+"!"

quizmaster_choice = nil
doors.each_with_index do |door, index|
	if index != user_choice && door == 'goat'
		quizmaster_choice = index
	end
end

puts "There's a goat behind door "+(quizmaster_choice+1).to_s + '.'
puts "Do you want to change to the other door? (yes/no)"
swap = gets.chomp

if swap == 'yes' && doors[user_choice] == 'goat'
	won = 'car'
else
	won = 'goat'
end

puts 'You have won'.ljust(20, '.')
puts 'a'.center(20, '.')
puts won.to_s.ljust(20, '!')