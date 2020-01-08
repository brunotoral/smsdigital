require 'smsdigital'

require 'vcr'
require 'byebug'
require 'webmock/rspec'

gem_root = Pathname.new(File.realpath('../..', __FILE__))
Dir[gem_root.join('spec', 'support', '**', '*.rb')].each { |f| require f }

WebMock.allow_net_connect!