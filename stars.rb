# Seeing Stars
#
# Write a method that displays an 8-pointed star in an n by n grid,
# where n is an odd integer supplied as argument to the method.
#
# The smallest star should be in a 7x7 grid (ie no arguments less than 7
# should be accepted.)
#
# Example:
# star(7) # =>
#
# *  *  *
#  * * *
#   ***  
# *******
#   ***  
#  * * *
# *  *  *     
#
# star(9) # =>
#
# *   *   *
#  *  *  *
#   * * * 
#    ***
# *********
#    ***  
#   * * *
#  *  *  *
# *   *   *
#
# 
# - make an array with n strings as elements
# - middle string has n stars
# - strings preceding and following middle string mirror each other
# - always 3 stars per string
# - spaces follow a rule:
#     num_top_rows = (n-1)/2
#     bottom_rows = num_top_rows
#     preceding_spaces = trailing_spaces
#     inbetween_spaces + preceding_spaces = num_top_rows - 1
#     star = "*"
#
#     top_lines = []
#     preceding_spaces = ""
#     inbetween_spaces = (num_top_rows - 1) * " "
#     for line in (1..num_top_rows)
#       top_lines << preceding_spaces + star + inbetween_spaces + star + inbetween_spaces + star + trailing_spaces
#       
# Code

def star(n)
  # add top top_lines
  top_lines = []
  
  num_top_rows = (n-1)/2 
  star = "*"
  preceding_spaces = ""
  inbetween_spaces = ""
  trailing_spaces = ""
  (1..num_top_rows).each do |line|

    # get number of inbetween spaces
    (num_top_rows - line).times { inbetween_spaces << " " }
    
    # get number of preceding_spaces
    (line - 1).times { preceding_spaces << " " }
    top_lines << preceding_spaces + star + inbetween_spaces + star + inbetween_spaces + star
    
    # reset for next iteration
    inbetween_spaces = ""
    preceding_spaces = ""
  end

  middle_line = ""
  n.times { middle_line << "*" }

  # add bottom top_lines
  bottom_lines = [] 
  top_lines.reverse.each { |line| bottom_lines << line }
  
  star_lines = (top_lines + [middle_line] + bottom_lines).flatten
  puts star_lines
end

star(7)
star(9)
star(23)
