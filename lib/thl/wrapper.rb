class THL::Wrapper
  attr_accessor :osx_object
  def initialize(osx_object)
    self.osx_object = osx_object.get
  end
  
  def method_missing(name, *args)
    osx_object.send(name, *args)
  end
  
  def self.expose(collection_name, class_name, &block)
    unless block_given?
      block = lambda {|obj| obj.osx_object.send(collection_name)}
    end
    class_eval do
      define_method(collection_name) do
        block.call(self).collect {|obj| THL.const_get(class_name).new(obj)}
      end
    end
  end
end