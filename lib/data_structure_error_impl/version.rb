# Copyright (C) 2020 Diligent Software LLC. All rights reserved. Released
# under the MIT License.
require 'data_structure_error'
require 'data_structure_error_impl_helper'

# DataStructureErrorImpl.
# @abstract:
# Implements the DataStructureError class interface.
# @attribute message: refer interface.
class DataStructureErrorImpl < DataStructureError

  include DataStructureErrorImplHelper
  extend DataStructureErrorImplHelper

  VERSION = '1.4.2'.freeze

end
