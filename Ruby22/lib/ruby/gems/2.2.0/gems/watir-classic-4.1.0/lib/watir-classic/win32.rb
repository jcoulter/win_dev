require 'dl/import'
require 'dl/struct'
require 'Win32API'

module Watir
  # @private
  module Win32
    # this will find the IEDialog.dll file in its build location
    @@iedialog_file = (File.expand_path(File.dirname(__FILE__) + '/..') + "/watir-classic/IEDialog/Release/IEDialog.dll").gsub('/', '\\')

    GetUnknown = Win32API.new(@@iedialog_file, 'GetUnknown', ['l', 'p'], 'v')    
    User32 = DL.dlopen('user32')
    if RUBY_VERSION =~ /^1\.8/
      FindWindowEx = User32['FindWindowEx', 'LLLpp']
      # method for this found in wet-winobj/wet/winobjects/WinUtils.rb
      GetWindow = User32['GetWindow', 'ILL']
      IsWindow = User32['IsWindow', 'II']
    else
      FindWindowEx = GetWindow = IsWindow = lambda do |*args|
        raise NotImplementedError, "1.9's DL API not compatible with 1.8, see http://www.ruby-forum.com/topic/138277"
      end
    end
    
    ## GetWindows Constants
    GW_HWNDFIRST = 0
    GW_HWNDLAST = 1
    GW_HWNDNEXT = 2
    GW_HWNDPREV = 3
    GW_OWNER = 4
    GW_CHILD = 5
    GW_ENABLEDPOPUP = 6
    GW_MAX = 6


    # Does the window with the specified window handle (hwnd) exist?
    def self.window_exists? hwnd
      rtn, junk = IsWindow[hwnd]
      rtn == 1
    end
  end
end  
