def random
  result = [true, false].sample
end
if random == true
  puts 'sí'
elsif random == false
    puts 'no'
else
    puts 'error'
end
