products = %w(Producto1 Producto2 Producto3 Producto4)
prices = %w[1000 2000 1500 950]
html = ''

count = 0
products.each do |i|
html += "<div class='product'> #{i} #{prices[count]}"
html += "</div>\n"
count += 1
end

puts html
