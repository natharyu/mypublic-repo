# Reprends ton programme exo_20.rb et fais un programme pyramide.rb qui montera au lieu de descendre :

# Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?
# > 5
# Voici la pyramide :
#     #
#    ##
#   ###
#  ####
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
    print " " * (nombre-i)
    puts "#" * i
    i = i + 1
end