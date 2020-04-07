# Écris un programme exo_11.rb qui demande un nombre à l'utilisateur, puis qui écrit autant de fois "Salut, ça farte ?"
puts "Donne moi un nombre"
print "=> "
nombre = (gets.chomp).to_i
nombre.times do |i|
    puts "Salut ça farte ?"
end
