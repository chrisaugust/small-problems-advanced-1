# Rotating Matrices 
#
# PROBLEM
# Write a method that takes a matrix and rotates it 90 degrees clockwise:
#
# 3 4 1   =>  9 3
# 9 7 5       7 4
#             5 1
#
# EXAMPLES
# matrix1 = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]
#
# matrix2 = [
#  [3, 7, 4, 2],
#  [5, 1, 0, 8]
# ]
#
# new_matrix1 = rotate90(matrix1)
# new_matrix2 = rotate90(matrix2)
# new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))
#
# p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
# p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
# p new_matrix3 == matrix2
#
#
# TYPE SIGNATURE
# array -> array
#
#
# DATA STRUCTURE
# matrix (array of arrays)
#
#
# ALGORITHM 
# same as for rotate mxn matrix, except each row must be reversed
#
#
# CODE
require 'test/unit'
require_relative 'transpose2'

class RotatingMatrices < Test::Unit::TestCase
  def test_rotate90
    assert_equal rotate90([[1, 5, 8],[4, 7, 2],[3, 9, 6]]), 
                 [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
    assert_equal rotate90([[3, 7, 4, 2], [5, 1, 0, 8]]),
                 [[5, 3], [1, 7], [0, 4], [8, 2]]
  end
end

def rotate90(matrix)
  reversed = transpose(matrix)
  
  rotated90 = reversed.each do |row|
    row.reverse!
  end

  rotated90
end
