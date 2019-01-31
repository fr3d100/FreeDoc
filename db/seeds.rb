# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# On détruit les données en base
Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
City.destroy_all
Speciality.destroy_all

#On créé 2 villes
2.times do 
	City.create(name: Faker::HarryPotter.location)
end
puts "2 villes ont été créées"

#On créé 5 spécialités
5.times do
	Speciality.create(name: Faker::Job.title)
end
puts "5 spécialités ont été créées"

# On créé 5 docteurs
5.times do 
	Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city:City.order("RANDOM()").first)
end
puts "5 docteurs ont été créés"

#On créé 2 spécialités par médecins
Doctor.all.each do |doc|
	2.times do
		JoinTableSpecialityDoctor.create(doctor: doc, speciality: Speciality.order("RANDOM()").first)
	end
end
puts "2 spécialités ont été attribuées à tous les docs"

# On créé 10 patients
10.times do 
	Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city:City.order("RANDOM()").first)
end
puts "10 patients ont été créés"

# On créé 50 RDV 
50.times do 
	Appointment.create(doctor: Doctor.order("RANDOM()").first ,patient: Patient.order("RANDOM()").first, city:City.order("RANDOM()").first)
end
puts "50 RDV ont été créés"
