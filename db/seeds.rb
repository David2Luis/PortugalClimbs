# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

portuguese_female_first_names = %w[Maria Clara Beatriz Matilde Catarina Ana Bruna Vitoria Renata Carlota] # 10
portuguese_female_last_names = %w[Santos Fernandes Sousa Rocha Alves Esteves Albuquerque Silva Louro Amorim] # 10

portuguese_male_first_names = %w[Diogo Simão João Tiago Bruno Pedro Vasco Tomás Afonso Martim] # 10
portuguese_male_last_names = %w[Santos Fernandes Sousa Rocha Alves Esteves Albuquerque Silva Louro Amorim] # 10

15.times do
  user_female = User.create(
    name: "#{portuguese_female_first_names.sample} #{portuguese_female_last_names.sample}",
    location: locations[counter],
    description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4),
    email: Faker::Internet.email,
    password: '123123',
    gender: 'Female',
    phone_number: "+351 9#{rand(1..3)}#{rand(0..9)} #{Faker::Number.number(digits: 3)} #{Faker::Number.number(digits: 3)}",
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
    location: locations[counter],
    description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4),
    email: Faker::Internet.email,
    password: '123123',
    gender: 'Male',
    phone_number: "+351 9#{rand(1..3)}#{rand(0..9)} #{Faker::Number.number(digits: 3)} #{Faker::Number.number(digits: 3)}",
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
