#the amount of games to be played
x = 1000000

#the initial number of won games 
wins = 0

#this method defines the game mechanics
def choice(swap)
	#save the goats and the car in an array and shuffle them
	doors = ['car', 'goat', 'goat'].shuffle

	#let the user automagically choose a random door
	user_choice = rand(0..2)

	#let the program choose a door that has a goat behind it and one that isn't the same as the user's choice
	doors.each_with_index do |door, index|
		if index != user_choice && door == 'goat'
			quizmaster_choice = index
		end
	end

	#check if the user has won or not
	if (swap == true && doors[user_choice] == 'goat') || (swap == false && doors[user_choice] == 'car')
		return 1
	end
	return 0
end

#execute the choice method an x number of times
x.times do
	#add the value returned from the choice method to the amount of won games when always swapping doors
	wins += choice(true)
end

#tell the user the amount of times won and lost
puts 'Swapped:'
puts 'Won games: ' + wins.to_s
puts 'Lost games: ' + (x-wins).to_s
puts

#reset the amount of won games
wins = 0

#execute the choice method an x number of times
x.times do
	#add the value returned from the choice method to the amount of won games when never swapping doors
	wins += choice(false)
end

#tell the user the amount of times won and lost
puts'Not swapped:'
puts 'Won games: ' + wins.to_s
puts 'Lost games: ' + (x-wins).to_s