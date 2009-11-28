require 'osx/cocoa'
include OSX 
OSX.require_framework 'ScriptingBridge'

##
# Library to simplify accessing The Hit List from Ruby/AppleScript
module THL
  def self.new
    App.new
  end
end

%w{wrapper app folder list task}.each do |file|
  require File.join(File.dirname(__FILE__), 'thl', file)
end