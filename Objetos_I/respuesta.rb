class Numero
  attr_reader :numero
  def initialize
    @numero = ['A',2,3,4,5,6,7,8,9,'J','Q','K'].sample
  end
end
class Pinta
  attr_reader :pinta
  def initialize
    @pinta = ['Corazones','Diamantes','Pica','Trébol'].sample
  end
end
class Carta
  attr_reader :numero, :pinta
  def initialize
    @numero = Numero.new
    @numero = @numero.numero
    @pinta = Pinta.new
    @pinta = @pinta.pinta
  end
end

def menu
  puts "*---- Cartas ----*"
  puts "1.- Mostrar..."
  puts "2.- Salir"
  puts "3.- Jugar otra vez..."
  puts "Seleccione una opción: "
end

opcion = 4

while opcion !=2
  menu
  opcion = gets.chomp.to_i
  baraja = Array.new
  5.times{ baraja.push(Carta.new)  }

  if opcion == 1
    puts "Mostrando tu mano ....\n \n"

    baraja.each{ |item|  puts "#{item.numero} de #{item.pinta}"  }

    puts "\n \n "

  elsif opcion == 2
    puts "\nTen un buen día :) \n \n"
  elsif opcion ==3
    5.times{baraja.delete_at(-1)}
    5.times{ baraja.push(Carta.new)  }
    puts "Mostrando tu nueva mano ....\n \n"

    baraja.each{ |item|  puts "#{item.numero} de #{item.pinta}"  }

    puts "\n \n "
  else
    puts "Opción NO válida."
  end
end
