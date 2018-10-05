h_w = Array.new
height = Array.new
width = Array.new
puts"----------------"
puts"enter the dimention between 0 < L < 10000:"
l = gets.chomp.to_i
puts"enter no_of_image between 0< no_of_image <100:"
no_of_image = gets.chomp.to_i
for i in 0..no_of_image-1
  h_w[i]=gets.chomp
end
puts"------------"
lenght = h_w.count
for i in 0..lenght-1
  both_value = h_w[i].split(" ")
  height = both_value[0].to_i
  width = both_value[1].to_i
  puts height
  puts width
  if (height < l || width < l)
    puts "image not valid"
  else (height > l || width > l)
    if height == width
      puts "perfect"
    else
      puts "crop and accept"
    end
  end
end
