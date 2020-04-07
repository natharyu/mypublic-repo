# Écris un programme exo_18.rb qui va créer une liste de 50 faux emails et les stocker dans une array. Voici le format que devront avoir les faux emails :
#
# "jean.dupont.01@email.fr"
# "jean.dupont.02@email.fr"
# etc..

emailList = []

# De i = 1 à i == 50, tableau << "email#{i}"; i+=1
i = 1
while i <= 50 do
    email = "jean.dupont.%02d@email.fr" % i
    emailList << email

    i = i + 1
end

puts emailList
