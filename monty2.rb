i = 0
x = 1000000
fout = 0
goed = 0
puts "wel wisselen: "
while i<x
	i+=1
	deuren = ['a', 'b', 'c']
	gekozen = []
	goede_deur = deuren[rand(0..2)]
	keuze = deuren[rand(0..2)]

	gekozen.push goede_deur
	deuren.delete(goede_deur)
	gekozen.push keuze
	deuren.delete(keuze)

	if keuze == goede_deur
		mijn_keuze = deuren[rand(0..1)]
		deuren.delete(mijn_keuze)
		swap = 'ja'

		if swap == 'ja'
			fout += 1

		elsif swap == 'nee'
			goed += 1
		end

	elsif keuze != goede_deur
		mijn_keuze = deuren[0]
		deuren.delete(mijn_keuze)
		swap = 'ja'

		if swap == 'nee'
			fout += 1
			puts 'fout'

		elsif swap == 'ja'
			goed += 1
		end
	end
end
i=0
puts 'goed= ' + goed.to_s
puts 'fout= ' + fout.to_s
puts '======'
goed = 0
fout = 0
puts "niet wisselen: "
while i<x
	i+=1
	deuren = ['a', 'b', 'c']
	gekozen = []
	goede_deur = deuren[rand(0..2)]
	keuze = deuren[rand(0..2)]

	gekozen.push goede_deur
	deuren.delete(goede_deur)
	gekozen.push keuze
	deuren.delete(keuze)

	if keuze == goede_deur
		mijn_keuze = deuren[rand(0..1)]
		deuren.delete(mijn_keuze)
		swap = 'nee'

		if swap == 'ja'
			fout += 1

		elsif swap == 'nee'
			goed += 1
		end

	elsif keuze != goede_deur
		mijn_keuze = deuren[0]
		deuren.delete(mijn_keuze)
		swap = 'nee'

		if swap == 'nee'
			fout += 1

		elsif swap == 'ja'
			goed += 1
		end
	end
end
puts 'goed= ' + goed.to_s
puts 'fout= ' + fout.to_s
puts '======'