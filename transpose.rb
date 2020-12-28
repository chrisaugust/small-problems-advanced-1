# Transpose 3x3
#
# PROBLEM
# A 3x3 matrix can be represented as an array of arrays:
#          
#          matrix =
# 1 5 8    [[1, 5, 8],
# 4 7 2  => [4, 7, 2],
# 3 9 6     [3, 9, 6]]
#
# To transpose this matrix is to exchange columns and rows
# of the original matrix. Transposing the matrix above results
# in the following:
#
# 1 4 3
# 5 7 9
# 8 2 6
#
# Implement a method that transposes a 3x3 matrix, returning a new
# matrix and leaving the original matrix unchanged.
#
#
# EXAMPLES
# matrix = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]
#
# new_matrix = transpose(matrix)
#
# p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
# p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
#
# TYPE SIGNATURE
# array -> array
#
# DATA STRUCTURE
# matrix (array of arrays)
#
# ALGORITHM 
# create empty array with three subarrays
# 3 each loops
#   1. append 1st element from each subarray to new subarray
#   2. append 2nd element...
#   3. append 3rd element
# return new array 
#
# CODE
require 'test/unit'

class Transpose < Test::Unit::TestCase
  def test_transpose
    matrix = [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
    assert_equal transpose(matrix), [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
    assert_equal matrix, [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
  end
end

def transpose(matrix)
  new_matrix = [[],[],[]]
  (1..3).each_with_index do |i|
    matrix.each do |subarray|
      new_matrix[i-1] << subarray[i-1]
    end
  end
  return new_matrix
end
