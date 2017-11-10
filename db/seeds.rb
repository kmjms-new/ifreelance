# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
20.times do
  Client.create([{
    name: Faker::Name.name,
    email: Faker::Internet.free_email,
    phone: Faker::Number.number(4),
    total_payment: Faker::Number.decimal(2, 3),
    }])
end

100.times do
  Project.create([{
    name_project: Faker::Team.creature,
    description: Faker::Lorem.sentence,
    star_date: Faker::Date.between(2.days.ago, Date.today),
    end_date: Faker::Date.between(2.days.ago, Date.today),
    name_client: Faker::Name.name,
    state_project: Faker::Team.state,
    price: Faker::Number.decimal(2, 3),
    progress: Faker::Number.decimal(2),
   }])
end

100.times do
  Expense.create([{
    quantity: Faker::Number.decimal(7, 3),
    process: Faker::Lorem.words,
    date_expenses: Faker::Date.between(8.days.ago, Date.today),
    category: Faker::Ancient.titan,
    state: Faker::Boolean.boolean,
    vinculation: Faker::Boolean.boolean,
    }])
end

100.times do
  Freelance.create([{
    name: Faker::Name.name,
    email: Faker::Internet.free_email,
    total_amount: Faker::Number.decimal(5, 3),
    }])
end

100.times do
  Income.create([{
    amount: Faker::Number.decimal(7, 3),
    clasification: Faker::Bank.name,
    info: Faker::Company.name,
    name_client: Faker::Name.name,
    name_project: Faker::Team.creature,
    developer: Faker::DragonBall.character,
    }])
end

100.times do
  Invoice.create([{
    number: Faker::Number.between(1, 100),
    date_invoice: Faker::Date.between(3.days.ago, Date.today),
    end_date: Faker::Date.between(8.days.ago, Date.today),
    name_client: Faker::Name.name,
    total_value: Faker::Number.decimal(7, 3),
    state: Faker::Ancient.titan,
    }])
end
