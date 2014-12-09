#Problem 1: You have array of integers. Write a recursive solution to find
#the sum of the integers.

def sum_recur(array)
	return 0 if array.empty?
	total = array.last + sum_recur(array[0...-1])

end

#Problem 2: You have array of integers. Write a recursive solution to
#determine whether or not the array contains a specific value.

def includes?(array, target)
	return true if array.count == 1 && array[0] == target
	return false if array.count == 1 && array[0] != target
	includes?(array[-1..-1], target) or includes?(array[0...-1], target)
end

#Problem 3: You have an unsorted array of integers. Write a recursive
#solution to count the number of occurrences of a specific value.

def num_occur(array, target)
  return 0 if array.empty?
  return 1 if array[0] == target && array.count == 1
  return 0 if array[0] != target && array.count == 1
  answer = (num_occur(array[-1..-1], target) + num_occur(array[0...-1], target))
end

#Problem 4: You have array of integers. Write a recursive solution to
#determine whether or not two adjacent elements of the array add to 12.

def add_to_twelve?(array)
	return false if array.empty? 
	return false if array.count == 1
	return true if array.first + array.last == 12 and array.count == 2
    return false if array.count == 2

	add_to_twelve?(array[0...-1]) || add_to_twelve?(array[-2..-1])
 
end

#Problem 5: You have array of integers. Write a recursive solution to
#determine if the array is sorted.

def sorted?(array)
  return [] if array.empty?
  return true if array.count == 1
  return false if array.first > array.last && array.count == 2
  return true if array.first <= array.last && array.count == 2
  sorted?(array[0...-1]) && sorted?(array[-2..-1])

end

#Problem 6: Write the code to give the value of a number after it is
#reversed. Must use recursion. (Don't use any #reverse methods!)

def reverse(number)
  return number if number.to_s.length == 1
  length = number.to_s.length
  if number.to_s.split("")[0...-1].length == 1
    return (number.to_s.split("").last.to_s + reverse(number.to_s.split("")[0]).to_s).to_i
  else 
  	return (number.to_s.split("").last.to_s  + reverse(number/10).to_s).to_i
	end
end

def reverse(number)
  return number if number < 10
  "#{(number % 10).to_s + reverse(number/10).to_s}".to_i
end

