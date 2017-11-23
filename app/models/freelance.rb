class Freelance < ApplicationRecord
  has_many :projects
  has_many :salaries
end
