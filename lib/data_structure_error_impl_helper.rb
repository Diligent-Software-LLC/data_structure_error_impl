# Copyright (C) 2020 Diligent Software LLC. All rights reserved. Released
# under the MIT License.

module DataStructureErrorImplHelper

  # stringify_obj_type(any_object).
  # @abstract:
  # Takes an object or value and converts its class name.
  # @pre: an object or value exists.
  # @post: the argument's class name returns, symbolized.
  # @param any_object: an object or value.
  def stringify_obj_type(any_object)

    object_class      = any_object.class()
    stringified_class = object_class.to_s()
    return stringified_class

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