arr1=[2,"pink",1,"blue",5,"red",4,"black"]
# puts"original array:"
puts arr1
puts"sorting array:"
arr1=arr1.sort_by{|x| x.to_s}
puts arr1
