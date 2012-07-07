
require 'array-sorted-compositing'
require 'array-unique-compositing'
#require_relative '../../../../../array-sorted-compositing/lib/array-sorted-compositing.rb'
#require_relative '../../../../../array-unique-compositing/lib/array-unique-compositing.rb'

# namespaces that have to be declared ahead of time for proper load order
require_relative './namespaces'

# source file requires
require_relative './requires.rb'

class ::Array::Sorted::Unique < ::Array::Hooked
  class Compositing < ::Array::Hooked
    include ::Array::Sorted::Unique::Compositing::ArrayInterface
  end
end
