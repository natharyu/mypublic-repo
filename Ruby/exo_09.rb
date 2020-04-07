# Écris un programme exo_09.rb qui demande le prénom de l'utilisateur, qui lui demande après son nom de famille, et qui salue l'utilisateur avec "Bonjour, prénom nom !"
puts "Bonjour, quel est ton prénom ?"
print "=> "
user_name = gets.chomp
puts "Quel est ton nom ?"
print "=> "
user_last_name = gets.chomp
puts "Bonjour, #{user_name} #{user_last_name} !"