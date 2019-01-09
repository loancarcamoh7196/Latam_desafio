cadena = 'Hola Mundo!'
caracter = 'o'

def buscar_caracter(cadena= nil,  caracter = nil)
  cond = cadena.include?(caracter)
  cond ? 'Si existe dentro de la cadena' : 'NO  existe dentro de la cadena'
end

puts buscar_caracter('Hola Mundo!','o')
