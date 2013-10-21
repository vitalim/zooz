require 'zooz_payments/version'

module ZoozPayments
  class << self
    attr_accessor :sandbox, :unique_id,:app_key,:response_type,:url

    # initializer with all the configuration values
    def setup
      self.response_type = 'NVP'
      yield self
      self.url = self.sandbox ? 'https://sandbox.zooz.co':'https://app.zooz.com'
    end

  end
end
