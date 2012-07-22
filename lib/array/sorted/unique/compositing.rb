
begin ; require 'development' ; rescue ; end

require 'array-sorted-compositing'
require 'array-unique-compositing'

# namespaces that have to be declared ahead of time for proper load order
require_relative './namespaces'

# source file requires
require_relative './requires.rb'

class ::Array::Sorted::Unique < ::Array::Hooked
  class Compositing < ::Array::Hooked
    include ::Array::Sorted::Unique::Compositing::ArrayInterface
  end
end
