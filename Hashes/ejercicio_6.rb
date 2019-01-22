restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

#1
mas_caro = restaurant_menu.max_by{ |llave, par| par }
puts "El plato más caro es #{mas_caro}"
puts ""

#2
mas_barato = restaurant_menu.min_by{ |llave, par| par }
puts "El plato más barato es #{mas_barato}"
puts ""

#3
acum = 0
restaurant_menu.each { |indice, valor|  acum+= valor }
puts "Promedio de valor de los platos es: #{acum.to_f / restaurant_menu.length}"
puts ""

#4
platos  = restaurant_menu.invert.values
platos.each {|valor| puts valor}
puts ""

#5
valores = restaurant_menu.values
valores.each{ |valor | puts valor}
puts ""

#6
iva = restaurant_menu.each {|indice,valor| valor += (valor.to_f * 0.19.to_f).to_f
  puts valor
}
puts ""

#7
dcto = restaurant_menu.each{ |indice, valor|  valor = (valor *0.8.to_f).to_f!  if indice.include?(' ')
  puts valor
}

puts "El menu con dcto queda: #{dcto}"
