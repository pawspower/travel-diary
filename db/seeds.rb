# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Country.destroy_all

c1=Country.create(:name => 'Australia', :date => '1879-02-22', :note => 'note')
Country.create(:name => 'Netherlands', :date => '1912-02-07', :note => 'note')
Country.create(:name => 'Singapore', :date => '1915-11-21', :note => 'note')


puts "#{ Country.count } Countries created."

City.destroy_all

t1=City.create(:name => 'Sydney', :date => '1879-02-22', :note => 'note', :image => 'note')
t2=City.create(:name => 'Melbourne', :date => '1912-02-07', :note => 'note', :image => 'note')
City.create(:name => 'Amsterdam', :date => '1915-11-21', :note => 'note', :image => 'note')
City.create(:name => 'Singapore', :date => '1915-11-21', :note => 'note', :image => 'note')


puts "#{ City.count } cities created."

c1.cities << t1 << t2