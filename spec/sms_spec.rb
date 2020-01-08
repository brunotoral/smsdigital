require 'spec_helper'
require 'vcr'

describe SMSDigital::SMS do
  before(:all) { VCR.turn_on! }
  after(:all) { VCR.turn_off! }

  it "returns the correct phone number" do
    sms = SMSDigital::SMS.new("84666666666", "Foobar test foobar")
    
    expect(sms.phone).to eq "84666666666"
  end

  it "returns the correct message" do
    sms = SMSDigital::SMS.new("84666666666", "Foobar test foobar")

    expect(sms.message).to eq "Foobar test foobar"
  end

  it "returns true if response code 200" do
   SMSDigital.configure do |config|
      config.username = ENV['USERNAME'] 
      config.password = ENV['PASSWORD'] 
    end

    VCR.use_cassette('send_sms_status_200', record: :once) do
      sms = SMSDigital.send_sms("84666666666", "Foobar test foobar")
      

      expect(sms).to eq true
    end
  end
end