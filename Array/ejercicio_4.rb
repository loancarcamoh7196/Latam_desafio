products = %w(Producto1 Producto2 Producto3 Producto4)
html = ''
products.each do |item, indice|
html += "<div class='product'>#{item}</div>\n"
end
puts html
