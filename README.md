# Sorted Unique Compositing Array #

http://rubygems.org/gems/compositing-array-sorted-unique

# Description #

Provides CompositingArray::Sorted::Unique.

# Summary #

An implementation of Array that permits chaining, where children inherit changes to parent and where parent settings can be overridden in children, and that retains sorted order, ensuring inserted values are unique.

# Install #

* sudo gem install compositing-array-sorted-unique

# Usage #

```ruby
compositing_array = CompositingArray::Sorted::Unique.new
sub_compositing_array = CompositingArray::Sorted::Unique.new( compositing_array )

compositing_array.push( :A )
# compositing_array
# => [ :A ]
# sub_compositing_array
# => [ :A ]
compositing_array.push( :C )
# compositing_array
# => [ :A, :C ]
# sub_compositing_array
# => [ :A, :C ]
compositing_array.push( :B )
# compositing_array
# => [ :A, :B, :C ]
# sub_compositing_array
# => [ :A, :B, :C ]
compositing_array.push( :B )
# compositing_array
# => [ :A, :B, :C ]
# sub_compositing_array
# => [ :A, :B, :C ]

compositing_array.delete_at( 0 )
# compositing_array
# => [ :B, :C ]
# sub_compositing_array
# => [ :B, :C ]

sub_compositing_array.push( :A )
# compositing_array
# => [ :B, :C ]
# sub_compositing_array
# => [ :A, :B, :C ]
```

# License #

  (The MIT License)

  Copyright (c) Asher

  Permission is hereby granted, free of charge, to any person obtaining
  a copy of this software and associated documentation files (the
  'Software'), to deal in the Software without restriction, including
  without limitation the rights to use, copy, modify, merge, publish,
  distribute, sublicense, and/or sell copies of the Software, and to
  permit persons to whom the Software is furnished to do so, subject to
  the following conditions:

  The above copyright notice and this permission notice shall be
  included in all copies or substantial portions of the Software.

  THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
  MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
  IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
  CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
  TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
  SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.