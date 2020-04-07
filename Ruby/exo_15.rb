# Écris un programme exo_15.rb qui demande son année de naissance à l'utilisateur et qui va afficher chaque année depuis son année de naissance jusqu'aujourd'hui. 
# Pour chaque année affichée, le programme devra annoncer l'âge que l'utilisateur avait cette année-là.

puts "Quelle est ton année de naissance ?"
print "=> "
# anneeNaissance is a String
anneeNaissance = (gets.chomp).to_i
today = 2020

# Boucle de anneeNaissance à today
anneeEnCours = anneeNaissance
while anneeEnCours <= today do
    age = anneeEnCours - anneeNaissance 

    if anneeEnCours == today
        puts "En #{anneeEnCours}: tu as ou auras #{age} ans."
    else
        puts "En #{anneeEnCours}: tu avais #{age} ans."
    end

    anneeEnCours = anneeEnCours + 1
end