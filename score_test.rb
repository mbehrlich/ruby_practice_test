require 'colorize'
require_relative 'matt_practice_test'

passed = 0
puts
puts "  my_each"
print "    Test:"
test1 = 0
[1, 2, 3, 4, 5].my_each { |el| test1 += el }
if test1 == 15
  puts "PASSED!".colorize(:green)
  passed += 1
else
  puts "FAILED!".colorize(:red)
end

puts " my_map"
print "   Test:"
if [1, 2, 3, 4, 5].map(&:to_s) == [1, 2, 3, 4, 5].my_map(&:to_s)
  puts "PASSED!".colorize(:green)
  passed += 1
else
  puts "FAILED!".colorize(:red)
end

puts " my_select"
print "   Test:"
if [1, 2, 3, 4, 5].select(&:even?) == [1, 2, 3, 4, 5].my_select(&:even?)
  puts "PASSED".colorize(:green)
  passed += 1
else
  puts "FAILED!".colorize(:red)
end

puts "  Hash\#my_each"
print "   Test:"
test_hash = {'a' => 1, 'b' => 2, 'c' => 3, 'd' => 4}
test_arr = []
test_hash.my_each {|k, v| test_arr << [k, v]}
if test_arr == [['a', 1], ['b', 2], ['c', 3], ['d', 4]]
  puts "PASSED".colorize(:green)
  passed += 1
else
  puts "FAILED!".colorize(:red)
end

puts "  my_flatten"
print "   Test:"
if [1, 2, [3, 4, [5], 6], 7, [8, 9]].my_flatten == [1, 2, 3, 4, 5, 6, 7, 8, 9]
  puts "PASSED".colorize(:green)
  passed += 1
else
  puts "FAILED!".colorize(:red)
end

puts "  subsets"
print "   Test 1:"
if [].subsets == [[]]
  puts "PASSED".colorize(:green)
  passed += 1
else
  puts "FAILED!".colorize(:red)
end

print "   Test 2:"
if ['a', 'b', 'c'].subsets.sort == [[], ['a'], ['b'], ['c'], ['a', 'b'], ['a', 'c'], ['b', 'c'], ['a', 'b', 'c']].sort
  puts "PASSED".colorize(:green)
  passed += 1
else
  puts "FAILED!".colorize(:red)
end

puts "  recursion function"
print "   Test 1:"
if recursion_function(1) == [1]
  puts "PASSED".colorize(:green)
  passed += 1
else
  puts "FAILED!".colorize(:red)
end

puts "    Test 2:"
if recursion_function(5) == [1, 4, 25, 226, 2713]
  puts "PASSED".colorize(:green)
  passed += 1
else
  puts "FAILED!".colorize(:red)
end

puts "  binary search"
print "   Test 1:"
if [1, 7, 9, 12, 14, 16, 18].binary_search(14) == 4
  puts "PASSED".colorize(:green)
  passed += 1
else
  puts "FAILED!".colorize(:red)
end

print "   Test 2:"
if [3, 9, 12, 14, 15, 18].binary_search(12) == 2
  puts "PASSED".colorize(:green)
  passed += 1
else
  puts "FAILED!".colorize(:red)
end

print "   Test 3:"
if [2, 9, 7].binary_search(4).nil?
  puts "PASSED".colorize(:green)
  passed += 1
else
  puts "FAILED!".colorize(:red)
end

puts "  quick_sort"
print "   Test 1:"
if [7, 9, 3, 5, 4].quick_sort == [3, 4, 5, 7, 9]
  puts "PASSED".colorize(:green)
  passed += 1
else
  puts "FAILED!".colorize(:red)
end

print "   Test 2:"
sort_test = [4, 9, 2, 1, 0, 8, 7, 7].quick_sort { |a, b| b <=> a }
if sort_test == [9, 8, 7, 7, 4, 2, 1, 0]
  puts "PASSED".colorize(:green)
  passed += 1
else
  puts "FAILED!".colorize(:red)
end

puts "You scored #{passed} / 14"
puts "You passed!" if passed >= 13
puts "Sorry, you didn't pass" if passed < 13
