# Notre programme exo_16.rb est devenu beau gosse. Écris un programme exo_17.rb qui va faire la même chose, sauf que si X et Y sont égaux, il dira "Il y a n ans, tu avais la moitié de l'âge que tu as aujourd'hui".
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
    if age == annee
        puts "En #{anneeEnCours}, il y a #{annee} ans, tu avais la moitié de l'âge que tu as aujourd'hui"
    else
        puts "En #{anneeEnCours}, il y a #{annee} ans, tu avais #{age} ans."
    end
    anneeEnCours = anneeEnCours + 1
end