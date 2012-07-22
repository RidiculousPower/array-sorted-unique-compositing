require 'date'

Gem::Specification.new do |spec|

  spec.name                      =  'array-sorted-unique-compositing'
  spec.rubyforge_project         =  'array-sorted-unique-compositing'
  spec.version                   =  '1.0.3'

  spec.summary                   =  "Provides Array::Sorted::Unique::Compositing."
  spec.description               =  "An implementation of Array that permits chaining, where children inherit changes to parent and where parent settings can be overridden in children, and that retains sorted order, ensuring inserted values are unique."

  spec.authors                   =  [ 'Asher' ]
  spec.email                     =  'asher@ridiculouspower.com'
  spec.homepage                  =  'http://rubygems.org/gems/array-sorted-unique-compositing'

  spec.add_dependency            'array-sorted-compositing'
  spec.add_dependency            'array-unique-compositing'

  spec.date                      = Date.today.to_s
  
  spec.files                     = Dir[ '{lib,spec}/**/*',
                                        'README*', 
                                        'LICENSE*',
                                        'CHANGELOG*' ]

end
