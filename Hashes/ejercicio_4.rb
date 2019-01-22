personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades = [32, 28, 41, 19]

#1
hash_personas = personas.zip(edades)

hash_personas.each {|obj, valor| puts "#{obj} -> #{valor}"}

puts ""

#2
def promedio(hash)
  acumulador = 0
  hash.each {|obj, valor| acumulador+=valor}
  return acumulador.to_f / hash.length
end

puts "El promedio de edades del hash #{promedio(hash_personas)}"
