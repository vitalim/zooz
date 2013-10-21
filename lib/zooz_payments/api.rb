require 'httparty'

module ZoozPayments
  class Api

    def initialize
      @errors = []
      @params = {}
    end

    def open_transaction(cmd,amount,currency_code,optional_args = {})
      return false unless self.valid?

      args = {'cmd' => cmd, 'amount' => amount, 'currencyCode' => currency_code}.merge(optional_args)
      http_response = HTTParty.post(ZoozPayments.url,
                                    :format => :plain,
                                    :query => args,
                                    :headers => {
                                        'ZooZ-Unique-ID' => ZoozPayments.unique_id,
                                        'ZooZ-App-Key' => ZoozPayments.app_key,
                                        'ZooZ-Response-Type' => ZoozPayments.response_type,
                                    })
      CGI.parse(http_response.body)
    end

    def verify_transaction(cmd, transaction_id,transaction_display_id,optional_args={})
      return false unless self.valid?

      args = {'cmd' => cmd, 'transactionID' => transaction_id, 'transactionDisplayID' => transaction_display_id}.merge(optional_args)
      http_response = HTTParty.post(ZoozPayments.url, :format => :plain,
                                    :query => args,
                                    :headers => {
                                        'ZooZ-Unique-ID' => ZoozPayments.unique_id,
                                        'ZooZ-App-Key' => ZoozPayments.app_key,
                                        'ZooZ-Response-Type' => ZoozPayments.response_type,
                                    })
      CGI.parse(http_response.body)
    end

    def valid?
      @errors = []
      @errors << 'unique_id is required' if ZoozPayments.unique_id.nil?
      @errors << 'app_key is required' if ZoozPayments.app_key.nil?
      @errors << 'response_type is required' if ZoozPayments.response_type.nil?
      @errors.empty?
    end

  end
end