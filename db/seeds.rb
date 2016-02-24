# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Annonce.destroy_all

annonces_attributes = [
  {
    title:        "Appartement T2",
    address:      "14 rue Sainte-Catherine, 33000 Bordeaux",
    description:  "Vaste appartement en plein centre-ville de Bordeaux ",
    capacity:        4,
    price:           80
  },
  {
    title:        "Péniche réaménagée",
    address:      "55, quai de la Reine, 75019 Paris",
    description:  "Belle péniche avec tout le confort moderne et une connexion wifi",
    capacity:        6,
    price:           250
  },
  {
    title:        "Rooftop à New-York",
    address:      "146 E 50th St, New York, NY 10022",
    description:  "Expérience unique dans ce rooftop d'exception dominant Manatthan ",
    capacity:        10,
    price:           1000
  },
  {
    title:        "Ferme de campagne",
    address:      "4 rue de la Chapelle, 33360 Latresne",
    description:  "Belle ferme de campagne avec une cheminée ancienne, une piscine et un étang dans le jardin",
    capacity:        20,
    price:           120
  },
  {
    title:        "Maison avec vue sur la Mediterannée à Antibes",
    address:      "2 Boulevard Maréchal Juin, 06160 Antibes",
    description:  "Profittez de la doceur du climat dans cette maison d'architecte et sa vue imprenable",
    capacity:        8,
    price:           200
  },
  {
    title:        "Appartement T3 situé sur la place Stanislas ",
    address:      "2 Place Stanislas, 54000 Nancy",
    description:  "Découvrez rapidement cet appartement confortable et idéal pour passer un séjour à Nancy",
    capacity:        6,
    price:           70
  }
]
annonces_attributes.each { |params| Annonce.create!(params) }

