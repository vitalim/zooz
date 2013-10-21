require 'zooz_payments'

describe ZoozPayments do
  it 'should have a version number' do
    ZoozPayments::VERSION.should_not be_nil
  end

end

