# Copyright (C) 2020 Diligent Software LLC. All rights reserved. Released
# under the GNU General Public License, Version 3. Refer LICENSE.txt.

require_relative 'data_structure_error_impl/version'

# DataStructureError.
# @class_description
#   DataStructureError implementation. Implements the DataStructureError
#   interface.
# @attr message [String]
#   An error explanation.
class DataStructureError < DataStructureErrorInt

  # initialize(message = DEFAULT_MESSAGE).
  # @description
  #   Initializes instances.
  # @param message [String]
  #   An error explanation.
  # @return [DataStructureError]
  #   An instance.
  def initialize(message = DEFAULT_MESSAGE)
    self.message = message
  end

  # message().
  # @description
  #   Gets the message attribute's reference.
  # @return [String]
  #   Explanation.
  def message()
    return @message.freeze()
  end

  private

  # message=(explanation = nil).
  # @description
  #   Sets the message attribute.
  # @param explanation [String]
  #   Error explanation.
  # @raise [TypeError]
  #   Arguing anything other than a String instance.
  def message=(explanation = nil)

    unless (explanation.instance_of?(String))
      raise(TypeError, 'Error messages are Strings.')
    else
      @message = explanation
    end

  end

end
