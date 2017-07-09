# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

w = Wife.create(email: "wife@email.com", password: "wife_pass")
h = Hasband.create(email: "hasband@email.com", password: "hasband_pass")
f = Family.create()
w.family = f
h.family = f
Question.create(content: "質問1", category: "before")
