# Transpose MxN
#
# PROBLEM
# Write a method that transposes the rows and columns of a matrix.
#
# EXAMPLES
# transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
# transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
# transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
#   [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
#   transpose([[1]]) == [[1]]
#
# TYPE SIGNATURE
# array -> array
#
# DATA STRUCTURE
# matrix (array of arrays)
#
# ALGORITHM 
# 0) initialize new_matrix with correct number of rows (equal to number of 
#    elements in the original matrix's rows
# 1) initialize a counter to 0
# 2) matrix columns times do
#   3) iterate over the rows of original matrix
#     
#   4) for each matrix row, append the row's element at index == counter
#   5) increment counter
# 5) return new_matrix
#
# CODE
require 'test/unit'

class Transpose < Test::Unit::TestCase
  def test_transpose
    assert_equal transpose([[1, 2, 3, 4]]), [[1], [2], [3], [4]]
    assert_equal transpose([[1], [2], [3], [4]]), [[1, 2, 3, 4]]
    assert_equal transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]), 
                   [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
    assert_equal transpose([[1]]), [[1]]
  end
end

def transpose(matrix)
  columns = matrix[0].length
  new_matrix = []
  columns.times { new_matrix << [] }

  counter = 0
  columns.times do
    matrix.each do |row|
      new_matrix[counter] << row[counter]
    end
    counter += 1
  end

  new_matrix
end
