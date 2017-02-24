# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

House.destroy_all
Character.destroy_all

stark = House.create(name: "House of Stark", motto: "Winter is Comming")
targaryen = House.create(name: "House of Targaryen", motto: "Fire and Blood")
watch = House.create(name: "Night's Watch", motto: "Sword in the Darkness")



stark.characters.create(name: "Edward Stark", title: "Lord of Winterfell")
stark.characters.create(name: "Arya Stark", title: "Daughter of Edward Stark")
watch.characters.create(name: "Samwell Tarly", title: "Steward to Maester Aemon")
