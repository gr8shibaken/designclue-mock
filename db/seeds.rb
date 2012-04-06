# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(
  :username => 'shibata',
  :password => 'shibata',
  :email => 'shibata@purplecow.com',
  :usertype => 'client'
)
User.create(
  :username => 'joe',
  :password => 'joe',
  :email => 'joe@purplecow.com',
  :usertype => 'creator'
)
