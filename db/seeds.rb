# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Test.destroy_all
Question.destroy_all
Cohort.destroy_all
User.destroy_all

@stefon = User.create(email: 'stefonsimmons@ga.co', password_digest: '12345', is_admin: true)
@ashley = User.create(email: 'akildunne@ga.co', password_digest: '54321', is_admin: true)

@sparrow = Cohort.create(name: 'sparrow', is_hidden: false, users: [@stefon, @ashley])
@dragonflies = Cohort.create(name: 'dragonfly', is_hidden: false, users: [@stefon])

@react = Question.create([
  {
    question: 'what are props?',
    answer: 'ways to pass value to components',
    points: 10,
    cohorts: [@sparrow],
    unit: "2"
  },
  {
    question: 'ways you can create react components',
    answer: 'functional and class',
    points: 15,
    cohorts: [@dragonflies, @sparrow],
    unit: "2"
  }
])

@orange_team = Test.create({
  answer: "functional & class based components",
  question: @react.second,
  is_correct: false,
  is_reviewed: false,
  group_name: "orange"
})

puts "#{Test.count} Tests created"