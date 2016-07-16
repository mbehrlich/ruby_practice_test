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
print "   Test1:"
test_hash = {'a' => 1, 'b' => 2, 'c' => 3, 'd' => 4}
test_arr = []
test_hash.my_each {|k, v| test_arr << [k, v]}
if test_arr == [['a', 1], ['b', 2], ['c', 3], ['d', 4]]
  puts "PASSED".colorize(:green)
  passed += 1
else
  puts "FAILED!".colorize(:red)
end
