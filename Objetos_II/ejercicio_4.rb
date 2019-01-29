class Dog
  attr_accessor :nombre, :raza, :color
  def initialize(hash)
    puts
    @nombre = hash[:nombre]
    @raza = hash[:raza]
    @color = hash[:color]
  end
  def ladrar
    "#{nombre} esta ladrando!"
  end
end

propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}
beth = Dog.new(propiedades)
puts beth.ladrar
