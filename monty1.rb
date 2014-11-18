deuren = ['a', 'b', 'c']
gekozen = []
goede_deur = deuren[rand(0..2)]

gekozen.push goede_deur
deuren.delete(goede_deur)

puts 'kies een deur (a, b of c) '
keuze = gets.chomp
gekozen.push keuze
deuren.delete(keuze)
puts

if keuze == goede_deur
	mijn_keuze = deuren[rand(0..1)]
	puts 'jij kiest voor ' + keuze + ', dan kies ik voor ' + mijn_keuze
	deuren.delete(mijn_keuze)
	puts
	puts 'dan blijft deur ' + deuren[0] + ' over'
	puts
	puts 'wil je wisselen naar deur ' + deuren[0] + '? (ja/nee)'
	swap = gets.chomp

	if swap == 'ja'
		puts 'fout'
	elsif swap == 'nee'
		puts 'goed'
	end

elsif keuze != goede_deur
	mijn_keuze = deuren[0]
	puts 'jij kiest voor ' + keuze + ', dan kies ik voor ' + mijn_keuze
	deuren.delete(mijn_keuze)
	puts
	puts 'dan blijft deur ' + gekozen[0] + ' over'
	puts
	puts 'wil je wisselen naar deur ' + gekozen[0] + '? (ja/nee)'
	swap = gets.chomp

	if swap == 'nee'
		puts 'fout'
	elsif swap == 'ja'
		puts 'goed'
	end
end