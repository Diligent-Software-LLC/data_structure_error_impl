# DataStructureErrorImpl [![Gem Version](https://badge.fury.io/rb/data_structure_error_impl.svg)](https://badge.fury.io/rb/data_structure_error_impl) ![Gem](https://img.shields.io/gem/dt/data_structure_error_impl)

Implements and subclasses the `DataStructureError`
class interface. There are three `public` instance methods, one `private` 
instance method, and two helper methods.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'data_structure_error_impl', `~> 1.3.0`
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install data_structure_error_impl -v 1.3.0

## Usage

### Public instance methods
The three `public` instance methods are the constructor, `message()`, and 
`raise_exception(data_structure_type)`.

#### `initialize(message_argument = nil)`
The constructor. The message attribute defaults the `DEFAULT_MESSAGE`.

#### `message()`

Getter method. Gets and returns the message attribute.

#### `raise_exception(data_structure_type)`

In the case the argument is a data object or an unacceptable data structure, 
raises. Takes an unknown type object.

### Private instance methods
The private instance method is `message=(explanation)`.

#### `message=(explanation)`

Setter method. In the case the explanation is a `String`, sets the message the 
explanation. Otherwise, sets the message the `DEFAULT_MESSAGE`.

### Helper methods

#### `acceptable?(argument_object)`

Boolean method. In the case the argument is an unacceptable type, returns 
`true`. Otherwise, returns `false`. Takes a presumed acceptable object.

#### `choose(explanation)`

In the case the argument is `nil` or any type excluding `String`, returns the 
`DEFAULT_MESSAGE`. Otherwise, returns the argument. The entire 
`ArgumentTypeError` family calls the method in the message attribute setter.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, 
run `rake test` to run the tests. You can also run `bin/console` for an 
interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.

### Testing

Unit and integration tested.

## Contributing

Bug reports and pull requests are welcome on GitHub at 
https://github.com/scientist8202/data_structure_error_impl. This project is 
intended to be a safe, welcoming space for collaboration, and contributors are 
expected to adhere to the 
[Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the 
[MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the DataStructureErrorImpl project’s codebases, issue 
trackers, chat rooms and mailing lists is expected to follow the 
[code of conduct](https://github.com/scientist8202/data_structure_error_impl/blob/master/CODE_OF_CONDUCT.md).
