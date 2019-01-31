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


# On créé 5 docteurs

5.times do 
	Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, speciality: Faker::Job.title )
end
puts "5 docteurs ont été créés"

# On créé 10 patients
10.times do 
	Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end
puts "10 patients ont été créés"


# On créé 50 RDV 
50.times do 
	Appointment.create(doctor: Doctor.order("RANDOM()").first ,patient: Patient.order("RANDOM()").first)
end
puts "50 RDV ont été créés"
