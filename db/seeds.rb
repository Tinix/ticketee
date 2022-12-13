# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if User.count.zero?
   user  = User.create!(
   email: "admin@ticketee.com", 
   password: "password", 
   password_confirmation: "password",
   admin: true
   )
   puts "User #{user.id} admin has been created."
end

unless User.exists?(email: "viewer@ticketee.com") 
  User.create(
		email: "viewer@ticketee.com",
		password: "password",
		password_confirmation: "password"
		)
end

["Visual Studio Code", "Internet Explorer"].each do |name|
	unless Project.exists?(name: name)
		Project.create!(name: name, description: "A sample project about #{name}")
	end
end
