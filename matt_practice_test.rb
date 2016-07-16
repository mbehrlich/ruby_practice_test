require 'colorize'
require 'byebug'

# This practice test was written by me, Matt Ehrlich. It should take about 45
# minutes to complete. I didn't use rspec, just the poor man's rspec of having
# tests print out true or false. So, it's much easier to fool my tests than
# rspec. Don't take shortcuts, follow the instructions carefully. To test your
# code, just run score_test.rb

# Challenge 1

# Define three functions, my_each, my_map, and my_select. Do not use .each,
# .each_with_index, or a for loop to accomplish this. my_map and my_select
# should use the my_each function.

class Array

  def my_each(&prc)

  end

  def my_map(&prc)

  end

  def my_select(&prc)

  end

end

# Challenge 2

# Define a my_each function for the Hash class. Do not use Hash#each OR
# Array#each to accomplish this. Do not use each_with_index or a for loop either.

class Hash

  def my_each
  end

end

# Challenge 3

# Implement my_flatten. It should return take a nested array, and return a new
# array with all of the elements of the original array and nested arrays.

class Array

  def my_flatten
  end

end

# Challenge 4

# implement subsets. It should return all subsets of an array.

class Array

  def subsets
    []
  end

end

# Challenge 5

# Write a recursive function that will find the first 'num' elements of a set
# that is defined by the following function: f(n) = n * 3 * f(n - 1) + 1. The base
# case is f(0) = 1.

def recursion_function(num)
end

# Challenge 6

# Write a searching algorithm that searches for an element in a sorted array,
# returning the index of that element. You must use binary search.

class Array

  def binary_search(el)

  end

end


# Final Challenge

# Implement quick_sort. Remember that quick_sort works by picking any element
# of an array, then partitioning the array into two arrays, everything less
# than that element, and everything greater than that element. It operates
# recursively until the entire array is sorted.

class Array

  def quick_sort(&prc)
  end

end
