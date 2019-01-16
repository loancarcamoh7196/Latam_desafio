nombres = ['Rodrigo', 'Gonzalo', 'Sergio', 'Loreto', 'Lorena', 'JP', 'Cote','Pia']

nombres_formateados = nombres.map do |nombre|
   nombre.length <=4 ? nombre.upcase : nombre.capitalize
end

nombres_filtrados = nombres_formateados.select do |nombre|
  nombre[0] == 'L'
end

print nombres_formateados
 puts nombres_filtrados
