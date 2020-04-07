# Écris un programme exo_14.rb qui demande un nombre à l'utilisateur, puis qui affiche un compte à rebours à partir de ce nombre, jusqu'à 0.
puts "Donne moi un nombre"
print "=> "
nombre = (gets.chomp).to_i

#Compte a rebours
while nombre >= 0 do
    puts nombre
    nombre = nombre - 1
end
