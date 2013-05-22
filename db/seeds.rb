# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

100.times do
  mark = Mark.new
  mark.title = Faker::Lorem.sentence
  mark.url = Faker::Internet.domain_name
  mark.description = Faker::Lorem.paragraph(2)
  mark.save!
end
