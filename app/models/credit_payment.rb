class CreditPayment < ApplicationRecord
  belongs_to :payment
  belongs_to :invoice
  # callbacks
    after_destroy :update_credit_applied

    def update_credit_applied
        payment.update_attributes(:credit_applied => payment.credit_applied - amount) if payment.present?
    end
  end
