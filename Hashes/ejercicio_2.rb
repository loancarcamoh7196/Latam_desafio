productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' => 750}

#1
productos.each { |producto, valor| puts "#{producto} : $#{valor}" }

#2
productos['cereal'] = 2200

#3
productos['bebida'] = 2000

#4
array_productos = productos.map
puts array_productos

#5
productos.delete('galletas')
