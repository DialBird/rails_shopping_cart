# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

FactoryGirl.create(:product, name: 'バナナ', price: 100)
FactoryGirl.create(:product, name: 'りんご', price: 200)
FactoryGirl.create(:product, name: 'メロン', price: 800)
