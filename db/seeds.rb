# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.destroy_all
Community.destroy_all
Act.destroy_all
Fee.destroy_all
Expense.destroy_all


AdminUser.create!(
    email: 'admin@sinergy.com', 
    password: '123123',
    password_confirmation:'123123'
) 

Community.create!(
    name: "los volaitos"
)
User.create!(
    email: 'bob@marley.com',
    password: '123123',
    password_confirmation:'123123'
    community_id: '1',
    name: "Bob",
    last_name: "Marley",
)
Act.create!(
    name: "Acta Nº 1",
    description: 'Acordamos en comprar, para el siguiente mes, bla bla',
    date: "2019-09-01",
    community_id: '1',
    photo: "https://www.pdffiller.com/preview/420/943/420943346/large.png"
)

Act.create!(
    name: "Acta Nº 2",
    description: 'Acordamos en comprar, para el siguiente mes, bla bla',
    date: "2019-09-10",
    community_id: '1',
    photo: "http://www.aspurc.org.ar/wp-content/uploads/2015/08/ACTA-37.jpg"
)

Fee.create!(
    user_id: '1',
    value: '30000',
    payed: 'false',
    fees_date: '04-2020'
)
Fee.create!(
    user_id: '1',
    value: '30000',
    payed: 'true',
    fees_date: '04-2020'
)
Fee.create!(
    user_id: '1',
    value: '30000',
    payed: 'true',
    fees_date: '04-2020'
)   
Expense.create!(
    community_id: '1',
    name: 'Compra de 5 gramos de AK-47',
    description: 'Se compraron 5g de AK-47 al guaton byron',
    value: '20000'
)
Expense.create!(
    community_id: '1',
    name: 'Compra bong para todos',
    description: 'Se compro un bong de 8 filtros y 3 kilos de hielo',
    value: '15000'
)