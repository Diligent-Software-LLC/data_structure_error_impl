require "data_structure_error_impl/version"

class DataStructureErrorImpl < DataStructureError

  ACCEPTABLE_C_TYPES = [:Array, :Hash, :Queue, :SizedQueue, :Struct]

  # initialize(message_argument = nil).
  # @abstract:
  # The constructor.
  # @param message_argument: a String and the exception explanation. Defaults nil.
  def initialize(message_argument = nil)
    self.message = message_argument
  end

  # message().
  # @abstract:
  # Getter method. Gets and returns the message attribute.
  def message()
    return @message
  end

  # raise_exception(data_structure_type).
  # @abstract:
  # In the case the argument is a data object or an unacceptable data structure, raises.
  # @param data_structure_type: an unknown type object.
  def raise_exception(data_structure_type)
    (raise superclass(), message()) if raise?(data_structure_type)
  end

  private

  # message=(explanation).
  # @abstract:
  # Setter method. In the case the explanation is a String, sets the message the explanation. Otherwise, sets the message the default explanation.
  def message=(explanation)
    @message = choose(explanation)
  end

end
