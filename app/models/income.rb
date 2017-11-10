class Income < ApplicationRecord
  #belongs_to :freelance
  #belongs_to :project
  def self.ingresos
      Income.sum(:amount)
    end
end
