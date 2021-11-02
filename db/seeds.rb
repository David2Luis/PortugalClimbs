# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
country = [
  "Portugal",
  "Espanha",
  "Noruega",
  "Espanha",
  "Austrália",
  "EUA",
  "França",
  "Itália",
  "Brazil",
  "Uruguai"
]
counter = 0
portuguese_female_first_names = %w[Maria Clara Beatriz Matilde Catarina Ana Bruna Vitoria Renata Carlota] # 10
portuguese_female_last_names = %w[Santos Fernandes Sousa Rocha Alves Esteves Albuquerque Silva Louro Amorim] # 10
portuguese_male_first_names = %w[Diogo Simão João Tiago Bruno Pedro Vasco Tomás Afonso Martim] # 10
portuguese_male_last_names = %w[Santos Fernandes Sousa Rocha Alves Esteves Albuquerque Silva Louro Amorim] # 10
puts "----------------------------------------------"
puts "----- Creating some portuguese females! ------"
puts "----------------------------------------------"

15.times do
  user_female = User.create(
    name: "#{portuguese_female_first_names.sample} #{portuguese_female_last_names.sample}",
    country: country[counter],
    description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4),
    email: Faker::Internet.email,
    password: '123123',
    gender: 'Female',
    date_of_birth: Faker::Date.birthday(min_age: 18, max_age: 50)
  )
  # user_female.avatar.attach(
  #   io: File.open(Rails.root.join("app/assets/images/avatars/female/female_ava#{rand(1..15)}.jpg")),
  #   filename: 'females'
  # )
end
  puts "----------------------------------------------"
  puts "-------------- Welcome ladies! ---------------"
  puts "----------------------------------------------"
  puts "------------------ Hold on! ------------------"
  puts "----------------------------------------------"
  puts "------ Creating some portuguese males! -------"
  puts "----------------------------------------------"

  15.times do
  user_male = User.create(
    name: "#{portuguese_male_first_names.sample} #{portuguese_male_last_names.sample}",
    country: country[counter],
    description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4),
    email: Faker::Internet.email,
    password: '123123',
    gender: 'Male',
    date_of_birth: Faker::Date.birthday(min_age: 18, max_age: 50)
  )
  # user_male.avatar.attach(
  #   io: File.open(Rails.root.join("app/assets/images/avatars/male/male_ava#{rand(1..15)}.jpg")),
  #   filename: 'males'
  # )
end
  puts "----------------------------------------------"
  puts "------------ Welcome gentlemans! -------------"
  puts "----------------------------------------------"

  level = [
  "C1",
  "C2",
  "C3",
  "C4",
  "C5",
  "C6"
]

Problem.create(
  name: "C4 do vertival",
  location: "Lisboa",
  level: "C4",
  category: "Gym/Boulder",
  description: "123 oliveira 4",
)

locations = [
  "Rua Condo Redondo Nº117",
  "Rua Manuel Arriaga Nº8",
  "R. Prof. Hernâni Cidade",
  "Av. da Liberdade",
  "Rua Dom João V",
  "Via Futebol Clube do Porto",
  "R. Dom Tomás de Almeida 61",
  "Via Circular do Montijo",
  "R. Pedro Álvares Cabral 42",
  "Av. do Uruguai 36"
]

category = [
  "Gym/Boulder",
  "Gym/Lead",
  "Outdoor/Lead",
  "Outdoor/Boulder"
]

15.times do
  problems = Problem.create(
    name: Faker::Books::Dune.character,
    location: locations[counter],
    level: "#{level.sample}",
    category: "#{category.sample}",
    description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4),
  )
end