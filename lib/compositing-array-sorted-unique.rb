
if $__compositing_array__spec__development
  require_relative '../../compositing-array-sorted/lib/compositing-array-sorted.rb'
  require_relative '../../compositing-array-unique/lib/compositing-array-unique.rb'
else
  require 'compositing-array-sorted'
  require 'compositing-array-unique'
end

class ::CompositingArray::Sorted::Unique < ::CompositingArray::Unique
end

require_relative 'compositing-array-sorted-unique/CompositingArray/Sorted/Unique.rb'

