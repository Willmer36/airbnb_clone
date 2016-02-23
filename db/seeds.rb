# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
annonces_attributes = [
  {
    title:        "Contrairement à la cirose, cet appartement vaut le coup",
    address:      "Paris",
    description:  "cool",
    capacity:        3,
    price:           55
  }
]
annonces_attributes.each { |params| Annonce.create!(params) }
