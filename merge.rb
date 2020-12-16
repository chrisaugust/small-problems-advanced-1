# Merge Sorted Lists
#
#
# PROBLEM
# Write a method that takes two sorted arrays as arguments and returns
# an array containing all elements from both argument arrays in sorted
# order. Build the result array one element at a time in the proper order.
# Do not mutate the argument arrays.
#
#
# EXAMPLES
# merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
# merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
# merge([], [1, 4, 5]) == [1, 4, 5]
# merge([1, 4, 5], []) == [1, 4, 5]
#
#
# TYPE SIGNATURE
# Array -> Array
#
#
# DATA STRUCTURE
# Array
#
#
# ALGORITHM
# 0) create an empty results array
# 1) while loop (while both argument arrays have elements)
#     2) compare first element of each array
#     3) push lesser element to the results array
# 4) check if there are remaining elements in either argument array
#     5) push the remaining element/elements to the results array
# 6) return results array
#
# CODE
require 'test/unit'

class MergeSortedLists < Test::Unit::TestCase
  def test_merge
    assert_equal merge([1, 5, 9], [2, 6, 8]), [1, 2, 5, 6, 8, 9]
    assert_equal merge([1, 1, 3], [2, 2]), [1, 1, 2, 2, 3]
    assert_equal merge([], [1, 4, 5]), [1, 4, 5]
    assert_equal merge([1, 4, 5], []), [1, 4, 5]
  end
end

def merge(a1, a2)
  merged_array = []

  while (a1.any? && a2.any?)
    if a1.first > a2.first
      merged_array << a2.shift
    else
      merged_array << a1.shift
    end
  end

  if a1.any?
    merged_array.concat(a1)
  end

  if a2.any?
    merged_array.concat(a2)
  end

  return merged_array
end
