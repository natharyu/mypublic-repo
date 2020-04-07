# Prends le programme exo_18.rb et créé un programme exo_19.rb qui va reprendre l'array des emails créés, et n'afficher que les emails avec un nombre pair.
# 
# "jean.dupont.02@email.fr"
# "jean.dupont.04@email.fr"
# etc..

emailList = []

# Création des emails
i = 1
while i <= 50 do
    email = "jean.dupont.%02d@email.fr" % i
    emailList << email

    i = i + 1
end

# Affichage des emails avec un nombre pair
i = 1
while i <= 50 do
    puts emailList[i]
    i = i+2

    #Deuxième solution
    # if emailList[i] =~ /jean.dupont.[0-9][02468]@email.fr$/ 
    #     puts emailList[i]
    # end
    # i = i+1

end