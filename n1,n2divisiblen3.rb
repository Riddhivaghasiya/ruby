puts"Enter the value of N1:"
value_n1=gets.chomp.to_i
puts"Enter the value of N2:"
value_n2=gets.chomp.to_i
puts"Enter the value divisible by 5:"
count=0
for i in value_n1..value_n2
  if i%5==0
    puts"#{i}"
    count+=1
  end
end
puts"count is:#{count}"
