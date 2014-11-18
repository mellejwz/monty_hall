deuren = ['auto', 'geit', 'geit'].shuffle

puts "Kies een deur (1 t/m 3)"
keuze = gets.chomp.to_i-1

puts "U heeft deur "+(keuze+1).to_s+" gekozen!"

keuze_quizmaster = nil
deuren.each_with_index do |deur, index|
	if index != keuze && deur == 'geit'
		keuze_quizmaster = index
	end
end

puts "Kijk eens aan, achter deur "+(keuze_quizmaster+1).to_s+" zit een geit"
puts "Wilt u wisselen?"
wissel = gets.chomp

if wissel == 'ja' && deuren[keuze] == 'geit'
	gewonnen = 'auto'
else
	gewonnen = 'geit'
end

puts 'U heeft gewonnen...'
puts '...een...'
puts gewonnen.to_s + '!!!!!!'