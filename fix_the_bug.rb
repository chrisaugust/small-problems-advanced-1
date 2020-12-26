# Fix the Bug
#
# Expected results are 
# []
# [21]
# [9, 16]
# [25, 36, 49]
#
# The program isn't working because there is no conditional statement for 
# the elsif. Once that is added in, the code will work as expected.

def my_method(array)
  if array.empty?
    []
  elsif #array.first.is_a? Integer
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])
