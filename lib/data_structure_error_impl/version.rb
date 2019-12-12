# Copyright (C) 2019 Diligent Software LLC. All rights reserved. Released
# under the MIT License.
require 'data_structure_error'
require 'data_structure_error_impl_helper'

# DataStructureErrorImpl.
# @abstract:
# Implements the DataStructureError class interface.
# @attribute message: refer interface.
class DataStructureErrorImpl < DataStructureError

  include DataStructureErrorImplHelper

  DEFAULT_MESSAGE = "The argued type is unacceptable. Refer " +
      "the documentation."

  VERSION = "1.3.0"

end
