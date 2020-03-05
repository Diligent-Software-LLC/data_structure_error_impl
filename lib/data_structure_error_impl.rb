# Copyright (C) 2020 Diligent Software LLC. All rights reserved. Released
# under the MIT License.

require 'data_structure_error_impl/version'

# DataStructureErrorImpl < DataStructureError.
# @abstract
# DataStructureError implementation.
class DataStructureErrorImpl < DataStructureError

  # self.acceptable?(any_object).
  # @abstract
  # Class method. Verifies an object is an acceptable type.
  # @param [Object] any_object
  # Any object.
  # @return [TrueClass, FalseClass] acceptable
  # True in the case the type is acceptable. False otherwise.
  def self.acceptable?(any_object)

    conversion = stringify_obj_type(any_object)
    acceptable = ACCEPTABLE_CORE_TYPES.include?(conversion)
    return acceptable

  end

  # initialize(message = DEFAULT_MESSAGE)
  # @abstract
  # Constructor. The message attribute defaults DEFAULT_MESSAGE.
  # @param [String] message
  # An explanation error.
  def initialize(message = DEFAULT_MESSAGE)
    self.message = message
  end

  # message().
  # @abstract
  # Getter method. Gets the message attribute.
  # @return [String] @message
  # The message attribute.
  def message()
    return @message
  end

  # raise_exception(any_object).
  # @abstract
  # In the case the argument is an unacceptable type, raises
  # DataStructureError.
  # @param [Object] any_object
  # Any object.
  def raise_exception(any_object)

    unless (DataStructureErrorImpl.acceptable?(any_object))
      raise INTERFACE, message()
    end

  end

  private

  # message=(explanation).
  # @abstract
  # Setter. Sets the message attribute the explanation.
  # @param [String] explanation
  # An error explanation.
  def message=(explanation)
    @message = choose(explanation)
  end

end
