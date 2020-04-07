# Écris un programme exo_10.rb qui demande son année de naissance à l'utilisateur, puis qui ressort l'âge que l'utilisateur a eu en 2017.
puts "Quelle est ton année de naissance ?"
print "=> "
# year is a String
year = gets.chomp
# Transform year in an Integer
age_in_2017 = 2017 - year.to_i
puts "Votre âge en 2017 était : #{age_in_2017} ans."
