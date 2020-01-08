require 'spec_helper'

describe SMSDigital do
  describe '.configure' do
    it 'saves username' do
      described_class.configure do |config|
        config.username = 'foobar'
      end

      expect(described_class.username).to eq 'foobar'
    end

    it 'saves password' do
      described_class.configure do |config|
        config.password = 'foobar'
      end

      expect(described_class.password).to eq 'foobar'
    end
  end
  
  describe '.reset' do
    it 'resets all configuration options' do
      described_class.configure do |config|
        config.password = 'Foobar'
        config.username = 'Codes'
      end

      described_class.reset_configuration!

      expect(described_class.password).to eq nil
      expect(described_class.username).to eq nil      
    end
  end
end
