begin
  gem "ffi"
rescue Gem::LoadError
  raise Gem::LoadError, "Unable to load FFI gem. Install it with:\n\tgem install ffi"
end
require "ffi"
require File.dirname(__FILE__) + "/win_32/constants"
require File.dirname(__FILE__) + "/win_32/keys"
require File.dirname(__FILE__) + "/win_32/functions"
require File.dirname(__FILE__) + "/win_32/locators"
require File.dirname(__FILE__) + "/win_32/window"
require File.dirname(__FILE__) + "/win_32/button_helper"
require File.dirname(__FILE__) + "/win_32/control"
require File.dirname(__FILE__) + "/win_32/button"
require File.dirname(__FILE__) + "/win_32/checkbox"
require File.dirname(__FILE__) + "/win_32/radio"
require File.dirname(__FILE__) + "/win_32/text_field"
require File.dirname(__FILE__) + "/win_32/select_list"
require File.dirname(__FILE__) + "/win_32/table"
require File.dirname(__FILE__) + "/win_32/label"
require File.dirname(__FILE__) + "/win_32/list_box"
require File.dirname(__FILE__) + "/win_32/mouse"
require File.dirname(__FILE__) + "/win_32/password_field"
