class Invoice < ApplicationRecord
  #belongs_to :client
  #has_many :detail_invoices
  def self.facturas
      Invoice.count(:state == "pendiente")
    end
    def self.delete_old
    	@old_invoices = Invoice.where('date < ?', 30.days.ago)
    	@old_invoices.delete_all
    end
end
