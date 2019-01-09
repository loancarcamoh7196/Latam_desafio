def draw_line(size)
 puts '*' * size
end
def draw_lines(size)
   puts size.times { draw_line(size)  }
end
draw_line 2
draw_lines 10
