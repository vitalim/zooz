# Zooz payments - test 3

zooz_payments gem is a ruby wrapper for zooz Affiliate Network

## Installation

Add this line to your application's Gemfile:

    gem 'zooz_payments'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install zooz_payments

## Usage

Create initializers/zooz.rb

    ZoozPayments.setup do |config|
      config.sandbox = true # boolean
      config.unique_id = ''
      config.app_key = ''
      config.response_type = '' # default 'NVP'
    end


## Sample

    api = ZoozPayments::Api.new
    response = api.open_transaction('openTrx',100,'USD',{})
    response = verify_transaction('verifyTrx', 'transaction_id','transaction_display_id',{})




## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
