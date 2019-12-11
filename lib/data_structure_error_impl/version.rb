# Copyright (C) 2019 Diligent Software LLC. All rights reserved. Released
# under the MIT License.
require 'data_structure_error'
require 'argument_type_error_helper'

# DataStructureErrorImpl.
# @abstract:
# Implements the DataStructureError class interface.
# @attribute message: refer interface.
class DataStructureErrorImpl < DataStructureError

  include ArgumentTypeErrorHelper

  VERSION = "1.2.0"

end
