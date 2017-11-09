class Freelance < ApplicationRecord
  rolify
  has_many :expenses
  has_many :projects
  has_many :incomes
end
