require "httparty"

require "smsdigital/version"
require "smsdigital/configuration"
require "smsdigital/sms"

module SMSDigital
  class  << self
    extend Forwardable

    attr_accessor :configuration

    def_delegators :configuration, :username, :password

    def configure
      yield(configuration)
    end

    def configuration
      @configuration ||= Configuration.new
    end

    def reset_configuration!
      self.configuration = Configuration.new
    end

    def send_sms(phone, message)
      sms = SMSDigital::SMS.new phone, message
      
      sms.send
      
      return sms.sent?
    end
  end

  class Error < StandardError; end  
end