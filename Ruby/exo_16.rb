# Le programme exo_15.rb est cool, mais on peut l'améliorer. Écris un programme exo_16.rb qui va demander son âge à l'utilisateur, et qui, pour chaque année depuis sa naissance, dira "Il y a X ans, tu avais Y ans".

puts "Quelle est ton année de naissance ?"
print "=> "
# anneeNaissance is a String
anneeNaissance = (gets.chomp).to_i
today = 2020

# Boucle de anneeNaissance à today
anneeEnCours = anneeNaissance
while anneeEnCours <= today do
    age = anneeEnCours - anneeNaissance 
    annee = today - anneeEnCours
    if annee >= 2
        puts "En #{anneeEnCours}, il y a #{annee} ans, tu avais #{age} ans."
    else
        puts "En #{anneeEnCours}, il y a #{annee} an, tu avais #{age} ans."
    end

    anneeEnCours = anneeEnCours + 1
end