def numeros_pares_entre (inicio = 0 , fin = 0)
  pares = []
  mutador = inicio

  while mutador <= fin
    pares.push(mutador) if mutador.even?
    mutador +=1
  end
  return pares
end

puts numeros_pares_entre(2,10)
