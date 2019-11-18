# DataStructureErrorImplHelper.
# @abstract:
# Defines and implements helper methods.
module DataStructureErrorImplHelper

  # choose(explanation).
  # @abstract:
  # In the case the explanation String is nil, sets the message the
  # DEFAULT_MESSAGE. Otherwise, sets the message the argued explanation.
  def choose(explanation)

    if (explanation.nil?())
      return ArgumentTypeError::DEFAULT_MESSAGE
    else
      return explanation
    end

  end

  # raise?(presumed_acceptable).
  # @abstract:
  # Boolean method. In the case the argument is an unacceptable type, returns
  # true. Otherwise, returns false.
  # @param presumed_acceptable: an object, presumed acceptable.
  def raise?(presumed_acceptable)

    class_name            = presumed_acceptable.class().to_s()
    symbolized_class_name = class_name.to_sym()
    acceptable_core_ds    = DataStructureErrorImpl::ACCEPTABLE_C_TYPES
    return (!acceptable_core_ds.include?(symbolized_class_name))

  end

end