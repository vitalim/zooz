require 'zooz_payments'

describe ZoozPayments::Api do

  it 'opens transactions' do
    api = ZoozPayments::Api.new
    response = api.open_transaction('openTrx',100,'USD',{})
    response.should_not be_nil
    response.should_not be_false
  end
end