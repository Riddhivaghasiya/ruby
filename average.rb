arr=[3,4,5]
puts"enter first value:"
value1=gets.chomp
puts"enter second value:"
value2=gets.chomp
puts"enter third value:"
value3=gets.chomp
puts"average of the value:"
puts arr.inject(0){|sum,x| sum + x}.to_f/arr.size
