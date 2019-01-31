class Speciality < ApplicationRecord
	has_many :join_table_speciality_doctors
	has_many :doctors, through: :join_table_speciality_doctors
end
