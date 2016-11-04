# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Prediction.create(first_name: 'Thomas', last_name: 'Horrobin', trump_ec_votes: 270, clinton_ec_votes: 268, lockin_datetime: DateTime.now)
