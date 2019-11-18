# DataStructureErrorImpl

Implements and subclasses the DataStructureError
class interface. There are three public instance methods, one private instance
method, and two helper methods.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'data_structure_error_impl'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install data_structure_error_impl

## Usage

### Public instance methods
The three public instance methods are the constructor, the message(), and raise_exception(data_structure_type).

#### initialize(message_argument = nil)
The constructor. The message defaults the DEFAULT_MESSAGE.

#### message()

Getter method. Gets and returns the message attribute.

#### raise_exception(data_structure_type)

In the case the argument is a data object or an unacceptable data structure, raises. Takes an unknown type object.

### Private instance methods
The private instance method is the message=(explanation).

#### message=(explanation)



### Helper methods
The two helper methods are choose(explanation), and raise?(presumed_acceptable).

#### choose(explanation)

#### raise?(presumed_acceptable)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/data_structure_error_impl. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the DataStructureErrorImpl project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/data_structure_error_impl/blob/master/CODE_OF_CONDUCT.md).
