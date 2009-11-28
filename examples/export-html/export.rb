require 'rubygems'
require 'erubis'
require 'lib/thl'

# Instantiate a THL application wrapper
thl = THL.new

# Evaluate the ERB template in context of THL
template = File.read('export.html.erb')
erb = Erubis::EscapedEruby.new(template)
puts erb.result(thl.send(:binding))
