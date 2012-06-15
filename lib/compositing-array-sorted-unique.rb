
if $__compositing_array__spec__development
  require_relative '../../compositing-array-sorted/lib/compositing-array-sorted.rb'
  require_relative '../../compositing-array-unique/lib/compositing-array-unique.rb'
else
  require 'compositing-array-sorted'
  require 'compositing-array-unique'
end

# Since we already have ::CompositingArray::Unique and ::CompositingArray::Sorted, and since
# both inherit from ::CompositingArray, which thereby has Unique and Sorted as constants,
# they also inherit Unique and Sorted as constants.
#
# This means we have ::CompositingArray::Unique::Sorted and ::CompositingArray::Sorted::Unique
# before we have intentionally created them.
#
# Since we already have ::CompositingArray::Sorted::Unique we can simply re-declare it as our
# subclass that should be in its place. That way ::CompositingArray::Sorted::Unique::Interface
# will be created anew rather than pointing to ::CompositingArray::Unique::Interface.
#
class ::CompositingArray::Sorted::Unique < ::CompositingArray::Unique
end

::CompositingArray::Unique::Sorted = ::CompositingArray::Sorted::Unique

basepath = 'compositing-array-sorted-unique/CompositingArray/Sorted/Unique'

files = [

  'Interface'
    
]

files.each do |this_file|
  require_relative( File.join( basepath, this_file ) + '.rb' )
end

require_relative( basepath + '.rb' )
