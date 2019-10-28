# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.destroy_all
Community.destroy_all


AdminUser.create!(
    email: 'admin@sinergy.com', 
    password: '123123',
    password_confirmation:'123123'
) 

Community.create!(
    name: "los volaitos"
)
Community.create!(
    name: "Primero medio del oxicorte"
)
Community.create!(
    name: "Viaje a cancun 2021!"
)


5.times do |j|
    User.create!(
        email: '',
        password: '123123',
        password_confirmation:'123123'
        community_id: '',
        name: "volaito#{j+1}",
        last_name: "delaeskina#{j+1}",
    )
end

5.times do |j|
    User.create!(
        email: '',
        password: '123123',
        password_confirmation:'123123'
        community_id: '',
        name: "alumnito#{j+1}",
        last_name: "delashoreza#{j+1}",
    )
end

5.times do |j|
    User.create!(
        email: '',
        password: '123123',
        password_confirmation:'123123'
        community_id: '',
        name: "patiperra#{j+1}",
        last_name: "socool#{j+1}",
    )
end

2.times do |k|
    Act.create!(
        name: "Acta Nº#{k+1}",
        description: 'Acordamos en comprar, para el siguiente mes, bla bla',
        date: "2019-05-#{k+1}",
        community_id: '',
        photo: ""
    )
end



   


