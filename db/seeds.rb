# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# AdminUser.destroy_all
# Community.destroy_all
# Act.destroy_all
# Fee.destroy_all
# Expense.destroy_all
# User.destroy_all


AdminUser.create!(
    email: 'admin@admin.com', 
    password: '123123',
    password_confirmation:'123123'
) 
