# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

number_of_data = 10

puts "-------------------------- *** ---------------------------------"
puts "Bonjour, nous allons créer un jeu de test pour tester nos Models"

puts " Suppression des anciennes données."  
User.delete_all
Pin.delete_all
Comment.delete_all

users = []
pins  = []

 number_of_data.times do
    user = User.create(first_name: Faker::Company.name,last_name: Faker::Company.name, email: Faker::Internet.email)
    
    users << user
    puts " \n Création de l'utilisateur #{user.first_name}"    
 
    Random.new.rand(0..3).times do
      pin = Pin.create(url: Faker::Company.logo, user: user)    
      puts "   Création du pin #{pin.url} "    
      pins << pin
     end       
 end

puts " \n Création des commentaires \n "  

number_of_data.times{
    user = users[Random.new.rand(0..users.size-1)]
    pin  = pins[Random.new.rand(0..pins.size-1)]
    Comment.create(content: Faker::Company.name, user: user,pin: pin )
    puts "#{user.first_name} vient d'ajouter un commentaire au pin suivant #{pin.url}"    
}

puts "-------------------------- FIN ---------------------------------"
