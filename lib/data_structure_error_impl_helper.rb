module DataStructureErrorImplHelper

  # acceptable?(argument_object).
  # @abstract:
  # Boolean method. In the case the argument is an unacceptable type, returns
  # true. Otherwise, returns false.
  # @param argument_object: an object, presumed acceptable.
  def acceptable?(argument_object)

    class_name            = argument_object.class().to_s()
    symbolized_class_name = class_name.to_sym()
    acceptable_core_ds    = DataStructureErrorImpl::ACCEPTABLE_C_TYPES
    return (!acceptable_core_ds.include?(symbolized_class_name))

  end

  # choose(explanation).
  # @abstract:
  # In the case the argument is nil or any type excluding String, returns the
  # DEFAULT_MESSAGE. Otherwise, returns the argument.
  # @param explanation: a String explaining the error.
  def choose(explanation)

    if (explanation.nil?() || !explanation.instance_of?(String))
      return DataStructureErrorImpl::DEFAULT_MESSAGE
    else
      return explanation
    end

  end

end