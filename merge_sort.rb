# Merge Sort
# ---------- 
#
# PROBLEM
# Write a method that takes an unsorted array and returns a 
# sorted array using the merge sort algorithm.
#
# EXAMPLE
# merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
# merge_sort([5, 3]) == [3, 5]
# merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
# merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == 
#            %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
# merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == 
#            [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54] 
#
# TYPE SIGNATURE
#
# DATA STRUCTURE
#
# ALGORITHM 
#
# CODE
require 'test/unit'
require_relative 'merge'

class MergeSort < Test::Unit::TestCase
  def test_merge_sort
    assert_equal merge_sort([9, 5, 7, 1]), [1, 5, 7, 9]
    assert_equal merge_sort([5, 3]), [3, 5]
    assert_equal merge_sort([6, 2, 7, 1, 4]), [1, 2, 4, 6, 7]
    assert_equal merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)), 
                            %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
    assert_equal merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 
                            37, 54, 43, 5, 25, 35, 18, 46]), 
                            
                            [1, 3, 5, 6, 7, 9, 15, 18, 22, 
                            23, 25, 35, 37, 43, 46, 51, 54] 
  end
end

def merge_sort(unsorted_array)
  if unsorted_array.length <= 1
    return unsorted_array
  end

  half_elements = (unsorted_array.length / 2).round

  left = unsorted_array.take(half_elements)
  right = unsorted_array.drop(half_elements)
  
  sorted_left = merge_sort(left)
  sorted_right = merge_sort(right)

  return merge(sorted_left, sorted_right)
end
