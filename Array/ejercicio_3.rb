a = [1,2,3,9,1,4,5,2,3,6,6]
puts "Arreglo Inicial: #{a}"
#1
a.each do |item|
   if item.even?
     a.delete_at(item)
   end
end
puts "Arreglo despues de Delete :  #{a}"
#2
acumulador = 0

a.each do |item, indice|
  acumulador += item
end
puts "La suma del arreglo #{acumulador}"

#3
acumulador = 0

a.each do |item, indice|
  acumulador += item
end
puts "El promedio del arreglo es: #{acumulador.to_f / a.count}"

#
a.each do |item, indice|
  item += 1
end

puts "Arreglo elemento + 1 : #{a}"
