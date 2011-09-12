# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

if Role.count == 0
  Role.create(:title => "Admin")
  Role.create(:title => "Technician")
  Role.create(:title => "Business user")
end

if User.count == 0
  admin = User.new(:email => "ranjithru@gmail.com", :password => "rans", :password_confirmation => "rans", :user_name => "Rans", :name => "Ranjithkumar", :employee_id => 101, :super_admin => true, :role_id => 1)
  admin.save
end
