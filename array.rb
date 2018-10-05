num = [1,4,6,7,4,5,6,7,3,1,4,5,8,5,9]
puts "Original array:\n"
puts num
puts "new array:\n"
new_num = num.uniq
puts new_num
puts "Sum of the values of the above array:\n"
puts new_num.inject(0){|sum,x| sum + x }
puts"average of the above array:\n"
puts new_num.inject(0){|sum,x| sum + x}.to_f/new_num.size
