

  module Paypal

    module TransStatus
      SUCCESS = :SUCCESS
      FAILED = :FAILED
      INVALID_CARD = :INVALID_CARD
      ALREADY_PAID = :ALREADY_PAID
    end

    def self.gateway
      ActiveMerchant::Billing::PaypalGateway.new(
          :login => CONFIG::PAYPAL_LOGIN,
          :password => CONFIG::PAYPAL_PASSWORD,
          :signature => CONFIG::PAYPAL_SIGNATURE
      )
    end
  end
end
