# DataStructureErrorImpl [![Gem Version](https://badge.fury.io/rb/data_structure_error_impl.svg)](https://badge.fury.io/rb/data_structure_error_impl) ![Gem](https://img.shields.io/gem/dt/data_structure_error_impl)

Implements the [DataStructureError](https://github.com/Diligent-Software-LLC/data_structure_error) 
interface. The DataStructureError library is a data structure error raising library.

## Donate

All donations, regardless of quantity, are helpful. Donations support longevity 
and continuous improvement. Donate at the project's 
[collective](https://opencollective.com/datastructureerror) page. Greatly
 appreciated.

## Installation

Add this line to your application's Gemfile:

```ruby
gem "data_structure_error_impl", "~> 1.4.5"
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install data_structure_error_impl -v 1.4.5
    
** All versions <= 1.4.4 are unstable or incomplete **

## Methods

### `self.acceptable?(any_object)`

Class method. Verifies the argument is an acceptable data structure. Returns 
`true` in the case the argument's type is acceptable, and `false` otherwise.

### `initialize(message = DEFAULT_MESSAGE)`
The constructor. The message attribute defaults the `DEFAULT_MESSAGE`.

### `message()`

Getter method. Gets and returns the message attribute.

### `raise_exception(any_object)`

In the case the argument is an unacceptable data structure, raises. Takes any 
object argument.

### `stringify_obj_type(any_object)`

Takes any argument and returns its stringified class name.

### `choose(explanation)`

In the case the argument is `nil` or any type excluding `String`, returns the 
`DEFAULT_MESSAGE`. Otherwise, returns the argument.

## Contributing

Refer the [Bug Reporting](https://github.com/Diligent-Software-LLC/data_structure_error_impl/issues/3) 
and the 
[Bug Fixing](https://github.com/Diligent-Software-LLC/data_structure_error_impl/issues/4) 
procedures.

### Code of Conduct

Everyone interacting in the DataStructureErrorImpl project’s codebases, issue 
trackers, chat rooms and mailing lists is expected to follow the 
[code of conduct](https://github.com/Diligent-Software-LLC/data_structure_error_impl/blob/master/CODE_OF_CONDUCT.md).

## License

Copyright (C) 2020 Diligent Software LLC. All rights reserved. Released under the MIT License.
The gem is available as open source under the terms of the 
[MIT License](https://opensource.org/licenses/MIT).
