class Project < ApplicationRecord
  belongs_to :client
  belongs_to :freelance
  has_one :invoice
end
