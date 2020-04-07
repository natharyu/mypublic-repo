# Écris un programme exo_13.rb qui demande son année de naissance à l'utilisateur, puis qui va ressortir chaque année depuis son année de naissance jusqu'aujourd'hui.
puts "Quelle est ton année de naissance ?"
print "=> "
# year is a String
year = (gets.chomp).to_i
today = 2020

# Boucle de year à today
loop do
    break if year > today
    puts year
    year = year + 1
end


#Deuxième possibilité

# while year <= today do
#     puts year
#     year = year + 1
# end