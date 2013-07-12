# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = PostingCategory.create([
  {name: 'For Sale'},
  {name: 'Want to Buy'},
  {name: 'Appartments'},
  {name: 'Sublets'},
  {name: 'Jobs'}
  ])

User.create(email: 'dimihal@wpi.edu', name: "David Mihal", password: "test", password_confirmation: 'test')
