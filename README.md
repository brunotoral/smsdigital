# SMSDigital

Welcome to SMSDigital gem, a ruby gem to use Smsdigital service.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'smsdigital'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install SMSDigital

## Usage


### Configuring Credentials

To configure your credentials call `configure` on `SMSDigigal` as below:

```ruby
SMSDigital.configure do |config|
  config.username = 'my-username'
  config.password = 'my-secure-password'
end
```

### Sending SMS to a single recipient

You can easily send SMS messages with the `send_sms` method:

```ruby
SMSDigital.send_sms(phone, message)
```

or you can create messages end send then individually

```ruby
sms = SMSDigital::SMS.new '8899989898', 'Read the source, Luke'
sms.send!
```

*Please, make sure you properly configure SMSDigital with your credentials*

### Sending SMS to multiple recipients
Coming soon.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

*make sure you properly configure SMSDigital with your credentials*
```ruby
export USERNAME='your_username'
export PASSWORD='your_password'
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/brunotoral/smsdigital.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
