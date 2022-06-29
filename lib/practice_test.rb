# Write a method that returns b^n recursively. Your solution should accept 
# negative values for n.

def exponent(b, n)
  return 1 if n == 0

  if n > 0
    b * exponent(b, n-1)
  else
    1.0 / b * exponent(b, n + 1)
  end

end

# Write a recursive method `string_include_key?(string, key)` that takes in a 
# string to search and a key string.  Return true if the string contains all of 
# the characters in the key in the same order that they appear in the key.

# example_1: string_include_key?("cadbpc", "abc") => true
# example_2: string_include_key("cba", "abc") => false

def string_include_key?(string, key)

  j = 0

  (0...string.length).each do |i|
    if key.include?(string[i]) && string[i] == key[j]
      j += 1
    elsif key.include?(string[i]) && string[i] == key[j+1]
      return false
    end
  end

  true
  
end

class Hash
  # Write a `Hash#my_merge(other_hash)` method. This should NOT modify the 
  # original hash and return a combined version of both hashes.
  # **Do NOT use the built-in `Hash#merge` method in your implementation.**
  
  def my_merge(other_hash)
    other_hash.each do |k, v|
      self[k] = v
    end

    self

  end
end

# Write a function `anagrams(str1, str2)` that takes in two words and returns a 
# boolean indicating whether or not the words are anagrams. Anagrams are words 
# that contain the same characters but not necessarily in the same order. Solve 
# this without using `Array#sort` or `Array#sort_by`.

def anagrams(str1, str2)
  count = 0

  (0...str1.length).each do |i|
    if str2.include?(str1[i])
      count += 1
    end
  end

  count == str2.length
 
end

class Array
  # Write an `Array#my_each(&prc)` method that calls a proc on each element.
  # **Do NOT use the built-in `Array#each`, `Array#each_with_index`, or 
  # `Array#map` methods in your implementation.**

  def my_each(&prc)
    new_arr = []

    (0...self.length).each do |i|
      prc.call(self[i])
    end

    self

  end
end

class Array
  # Define a method `Array#my_select(&prc)` that correctly returns an array of 
  # selected elements according to the block. **Do NOT use the built-in 
  # `Array#select` or `Array#reject` in your implementation.**

  def my_select(&prc)
    selected = []

    self.each do |ele|
      selected << ele if prc.call(ele)
    end

    selected
    
  end  
end

# Write a method that takes a string and an alphabet. It returns a copy of the string
# with the letters re-ordered according to their positions in the alphabet. If
# no alphabet is passed in, it defaults to normal alphabetical order (a-z).
# **Do NOT use `Array#sort` or `Array#sort_by`.**

# Example:
# `jumble_sort("hello")` => "ehllo"
# `jumble_sort("hello", ['o', 'l', 'h', 'e'])` => 'ollhe'

def jumble_sort(str, alphabet = nil)

  if alphabet == nil
    alphabet = ("a".."z").to_a
  end

  sorted = false

  until sorted
    sorted = true
    (0...str.length - 1).each do |i|
      if alphabet.index(str[i]) > alphabet.index(str[i+1])
        str[i], str[i+1] = str[i+1], str[i]
        sorted = false
      end
    end
  end

  str

end

