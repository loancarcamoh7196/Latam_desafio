nombres = ['Rodrigo', 'Gonzalo', 'Sergio', 'Loreto', 'Lorena', 'JP', 'Cote','Pia']

#1
def contar_caracteres(array)
  array.each do |item, indice|
    item.count >5 if puts "#{item}"
  end
end

contar_caracteres(nombres)
