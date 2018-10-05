numbers=[23,4,5,7,6,89,65,47,67]
even=numbers.select{|num|num.even?}
odd=numbers.select{|num|num.odd?}
puts"even number in array:#{even}"
puts"odd number in array:#{odd}"
puts"sum of even numbers:"
puts even.inject(0){|sum,x| sum + x}
puts"sum of odd numbers:"
puts odd.inject(0){|sum,x| sum + x}
