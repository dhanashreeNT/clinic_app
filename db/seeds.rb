# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Admin.create!(:email => "admin@example.com", :password =>"password", :password_confirmation =>"password")
Admin::Clinic.create!(:name => "Test Clinic", :address => "Testing Address\nTest Road", :city =>"Test")
Admin::Workhour.create([{day: 'Sunday'},{day: 'Monday'},{day: 'Tuesday'},{day: 'Wensday'},{day: 'Thursday'},{day: 'Friday'},{day: 'Saturday'}])