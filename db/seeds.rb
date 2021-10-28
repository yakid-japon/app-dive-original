User.create(name: "Chabla",email: "chablamedia@gmail.com",password: "Sarkodisen22", role: true)

5.times do |n|
    name = "User number " + n.to_s
    email = "user" + n.to_s + "@gmail.com"
    password = "mypassword"
    User.create!(name: name,
                email: email,
                password: password)
end

5.times do |n|
    hospi_name = "Chabla Hospital " + n.to_s
    hospi_adresse = "adresse " + n.to_s
    Hospital.create!(hospi_name: hospi_name,
    hospi_adresse: hospi_adresse)
end


5.times do |n|
    hospital_id = 5
    name_prest = "prestation " + n.to_s
    price = n*1000
    Prestation.create!(name_prest: name_prest,
    price: price, hospital_id: hospital_id)
end

5.times do |n|
    user_id = 1
    prestation_id = 1
    Payment.create!(user_id: user_id,
    prestation_id: prestation_id)
end

5.times do |n|
    user_id = 1
    prestation_id = 1
    opinion= "cool bro"+ n.to_s
    Comment.create!(user_id: user_id,
    prestation_id: prestation_id, opinion: opinion)
end