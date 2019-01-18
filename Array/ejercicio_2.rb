a = [1,2,3,9,1,4,5,2,3,6,6]

#1
a.pop

#2
a.delete_at(0)

#3
count = a.count
indice = count /2
a.delete_at(indice)

#4
a.pop if a[-1] != 1

#5
b = a.clone.reverse!
puts b
