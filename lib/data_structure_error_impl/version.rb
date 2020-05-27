# Copyright (C) 2020 Diligent Software LLC. All rights reserved. Released
# under the GNU General Public License, Version 3. Refer LICENSE.txt.

require 'data_structure_error_int'

# DataStructureError.
# @class_description
#   DataStructureError implementation. Implements the DataStructureError
#   interface.
# @attr message [String]
#   An error explanation.
class DataStructureError < DataStructureErrorInt
  VERSION = '3.0.1'.freeze()
end
