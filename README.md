thl-ruby
========

A library to simplify interaction with [The Hit List](http://www.potionfactory.com/thehitlist/) using Ruby and the AppleScript Scripting Bridge.

Examples:
---------

Display tasks by list (all folders):

    require 'lib/thl'
    thl = THL.new
    
    thl.lists.each do |list|
      puts "#{list.name}:"
      list.tasks.each do |task|
        puts "* #{task.title}"
      end
      puts "\n"
    end

See the "examples" directory for more.

TODO:
-----

* Package as a gem
* Add documentation
* Add more wrappers