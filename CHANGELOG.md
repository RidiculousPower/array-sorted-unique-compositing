
## 3/17/12 ##

Initial release.

## 3/18/12 ##

Added hooks for subclassing.

## 6/15/12 ##

Moved hooks out to array-sorted-unique and utilized array-sorted-unique as foundation.
Added alias from Array::Unique::Compositing::Sorted to Array::Sorted::Unique::Compositing.

## 6/18/12 ##

Fixes for :initialize that required changing module include order and changing subclass inheritance.

## 10/15/2012 ##

Updated to support multiple parents.

## 11/24/2012 ##

Updated for fake Array inheritance support since inheriting from Array prevents #to_a from being called at splat.
