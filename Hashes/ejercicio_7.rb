inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6}

def menu
  puts "Menu"
  puts "1.- Agregar item y su stock en un solo string y agregarlo al hash. Para separar el nombre del stock el usuario debe utilizar una coma"
  puts "2.- Eliminar item "
  puts "3.- Actualizar un item"
  puts "4.- Stock de cada item"
  puts "5.- Item que tiene el mayor stock."
  puts "6.- Item existe?."
  puts "7.- Salir"
  puts "Seleccione su opción: "
end

#Desarrollo del programa
opcion = 8


while opcion !=7
  menu
  opcion = gets.chomp.to_i

  if opcion ==1
    puts "\n*-------- Opcion 1-----------*"
    puts "\nIngrese datos de item,  \nrecuerde que debe separar con un coma y nada mas que una coma los datos, \nademas debe seguir el siguiente patrón: nombre,cantidad:"
    item = gets.chomp

    datos = item.split(',')
    inventario[datos[0]] = datos[-1]

    puts "\n****-- Nuevo inventario ----****"
    inventario.each {|obj, valor| puts "#{obj} -> #{valor}"}
    puts "\n*------------------ Fin opción ---------------------*\n \n "
  elsif opcion ==  2
    puts "\n*-------- Opcion 2-----------*"
    puts "\nIngrese nombre de item a eliminar"
    del = gets.chomp

    inventario.delete(del)

    puts "\n****-- Inventario Actualizado ----****"
    inventario.each {|obj, valor| puts "#{obj} -> #{valor}"}
    puts "\n*------------------ Fin opción ---------------------*\n \n "
  elsif opcion ==  3
    puts "\n*-------- Opcion 3-----------*"

    puts "\nIngrese nombre de item a actualizar:"
    upd = gets.chomp
    puts "Ingrese nuevo stock:"
    cant = gets.chomp.to_i

    inventario[upd] = cant

    puts "\n****-- Inventario Actualizado ----****"
    inventario.each {|obj, valor| puts "#{obj} -> #{valor}"}
    puts "\n*------------------ Fin opción ---------------------*\n \n "
  elsif opcion ==  4
    puts "\n*-------- Opcion 4-----------*"
    acum = 0
    inventario.each {|obj, valor| acum+=valor }

    puts "El stock total del inventario  es: #{acum}"

    puts "\n*------------------ Fin opción ---------------------*\n \n "
  elsif opcion ==  5
    puts "\n*-------- Opcion 5 -----------*"


    mayor = mas_caro = inventario.max_by{ |llave, par| par }
    puts "El producto con mayor stock es: #{mayor[0]} > #{mayor[-1]}"
    puts "\n*------------------ Fin opción ---------------------*\n \n "
  elsif opcion ==  6
    puts "\nIngrese nombre de item a buscar:"
    search = gets.chomp.to_s

    #Válido solo para valor
    #find  = inventario.include?(search)
    find =  lista.has_key?(search)
    puts 'Si' if find

    puts "\n*------------------ Fin opción ---------------------*\n \n "
  elsif opcion ==  7
    puts "\nAdios, ten un buen dia :) \n "
  else
    puts "\n Opcion NO válida \n \n "
  end
end
