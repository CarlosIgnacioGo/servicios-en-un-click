Comment.destroy_all
Service.destroy_all

25.times do
	Service.create(title: Faker::Commerce.department(5), description: Faker::Lorem.paragraphs(3), address: Faker::Address.street_address, email: Faker::Internet.email,phone: Faker::PhoneNumber.cell_phone)
end

AdminUser.create!(email: 'admin@seuc.com', password: 'adminluis', password_confirmation: 'password')