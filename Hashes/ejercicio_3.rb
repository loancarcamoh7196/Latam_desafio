h = {"x": 1, "y":2}

#1
h['z'] = 3
h.each {|obj, valor| puts "#{obj} -> #{valor}"}

puts ""
#2
h[:x] = 5
h.each {|obj, valor| puts "#{obj} -> #{valor}"}

puts ""

#3
h.delete(:y)
h.each {|obj, valor| puts "#{obj} -> #{valor}"}

h.each {|obj, valor| puts "yeeah" if obj == 'z' }

#4
x = h.invert
x.each {|obj, valor| puts "#{obj} -> #{valor}"}
