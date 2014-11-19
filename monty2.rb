x = 1000000
swapped_win = 0
not_swapped_win = 0
def choice(swap)
	doors = ['car', 'goat', 'goat'].shuffle
	user_choice = rand(0..2)
	doors.each_with_index do |door, number|
		if number != user_choice && door == 'goat'
			quizmaster_choice = number
		end
	end
	if (swap == true && doors[user_choice] == 'goat') || (swap == false && doors[user_choice] == 'car')
		return 1
	end
	return 0
end
x.times do
	swapped_win += choice(true)
	not_swapped_win += choice(false)
end
puts 'Swapped:'
puts 'Won games: ' + ((((100/x.to_f)*swapped_win)*100).to_i.to_f/100).to_s + '%'
puts 'Not swapped:'
puts 'Won games: ' + ((((100/x.to_f)*not_swapped_win)*100).to_i.to_f/100).to_s + '%'