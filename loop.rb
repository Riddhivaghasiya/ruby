loop do
  puts "Do you want to do that again?"
  answer = gets.chomp to_i
  if answer != 'Y'
    break
  end
end
x = 0

while x <= 10
  if x == 3
    x += 1
    next
  elsif x.odd?
    puts x
  end
  x += 1
end
