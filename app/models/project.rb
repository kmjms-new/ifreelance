class Project < ApplicationRecord
  has_many :detail_invoices
  has_many :incomes
  has_many :expenses
  #belongs_to :freelance
  #belongs_to :state_project
  #belongs_to :type_project
  def self.demanda_projects
      Project.group(:project_id).order('count(*) desc').limit(7).count
    end
end
