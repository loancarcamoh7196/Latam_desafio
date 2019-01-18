arreglo = [1,2,3,9,1,4,5,2,3,6,6]

#1
puts "#{arreglo[0]}"

#2
puts "#{arreglo[-1]}"

#3
arreglo.each do |item, indice|
  puts "#{item}"
end

#4
arreglo.each do |item, indice|
  puts "#{indice}: #{item}"
end

#5
arreglo.each do |item, indice|
  puts "#{indice}: #{item}" if indice.even?
end
