class SentEmail < ApplicationRecord
  # associations
    belongs_to :notification, :polymorphic => true
    
    self.inheritance_column = :_type_disabled

    paginates_per 10
  end
