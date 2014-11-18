x = 1000000
wins = 0

def choice(swap)
	doors = ['car', 'goat', 'goat'].shuffle

	user_choice = rand(0..2)
	doors.each_with_index do |door, index|
		if index != user_choice && door == 'goat'
			quizmaster_choice = index
		end
	end

	if (swap == 'yes' && doors[user_choice] == 'goat') || (swap == 'no' && doors[user_choice] == 'car')
		return 1
	end
	return 0
end

x.times do
	wins += choice('yes')
end
puts 'Wel wisselen:'
puts 'Gewonnen: ' + wins.to_s
puts 'Verloren: ' + (x-wins).to_s
puts

wins = 0
x.times do
	wins += choice('no')
end
puts'Niet wisselen:'
puts 'Gewonnen: ' + wins.to_s
puts 'Verloren: ' + (x-wins).to_s