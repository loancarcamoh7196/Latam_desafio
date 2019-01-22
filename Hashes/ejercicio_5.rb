meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]

#1
hash_meses = meses.zip(ventas).to_h

hash_meses.each {|obj, valor| puts "#{obj} -> #{valor}"}

puts ""

#2
invertido = hash_meses.invert
invertido.each {|obj, valor| puts "#{obj} -> #{valor}"}

#3
mayor = invertido.max_by{ |llave, par| llave }

puts "El mayor valor del hash #{mayor}"
