require 'zooz_payments/version'
require 'zooz_payments/api'

module ZoozPayments
  class << self
    attr_accessor :sandbox, :unique_id,:app_key,:response_type,:url

    # initializer with all the configuration values
    def setup
      self.response_type = 'NVP'
      yield self
      self.url = self.sandbox ? 'https://sandbox.zooz.co/mobile/SecuredWebServlet':'https://app.zooz.com/mobile/SecuredWebServlet'
    end

  end
end
