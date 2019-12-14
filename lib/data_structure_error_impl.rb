require "data_structure_error_impl/version"

class DataStructureErrorImpl < DataStructureError

  DEFAULT_MESSAGE    = "The argued type is unacceptable. Refer " +
      "the documentation."
  ACCEPTABLE_C_TYPES = [:Array, :Hash, :Queue, :SizedQueue, :Struct]
  INTERFACE_NAME     = superclass()

  # self.acceptable?(argument_o).
  # @abstract:
  # Class method. Verifies the argument is an acceptable data structure.
  # @return: true in the case the argument's type is acceptable, and false
  # otherwise.
  def self.acceptable?(argument_o)
    conversion = convert_obj_sym(argument_o)
    return (ACCEPTABLE_C_TYPES.include?(conversion))
  end

  # initialize(message_argument = nil).
  # @abstract:
  # The constructor.
  # @param message_argument: a String and the exception explanation. Defaults
  # nil.
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
  # In the case the argument is a data object or an unacceptable data
  # structure, raises.
  # @param data_structure_type: an unknown type object.
  def raise_exception(data_structure_type)
    (raise INTERFACE_NAME, message()) unless DataStructureErrorImpl.acceptable?(data_structure_type)
  end

  private

  # message=(explanation).
  # @abstract:
  # Setter method. In the case the explanation is a String, sets the message
  # the explanation. Otherwise, sets the message the default explanation.
  def message=(explanation)
    @message = choose(explanation)
  end

end
