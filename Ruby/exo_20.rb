# Construis un programme exo_20.rb qui va demander à l'utilisateur un nombre entre 1 et 25 et qui va sortir une pyramide à descendre d' autant d'étages que ce nombre. Voici un exemple :
# 
# Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?
# > 5
# Voici la pyramide :
# #
# ##
# ###
# ####
# #####

nombre = 0

while nombre > 25 || nombre < 1 do
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (Entre 1 et 25)"
    print "=> "
    nombre = (gets.chomp).to_i
end

puts "Voici la pyramide :"

i = 1
while i <= nombre do 
    puts "#" * i
    i = i + 1
end