class Morseable
  def initialize(number)
    @number = number
  end
  def generate_hash(number)
    # Esto es una aberración y debe ser refactorizado!
    if number == 0
      h = '-----'
    elsif number == 1
      h = '.----'
    elsif number == 2
      '..---'
    elsif number == 3
      h = '...--'
    elsif number == 4
      h = '....-'
    elsif number==5
      h = '.....'
    elsif number==6
      h = '-....'
    elsif number==7
      h = '--...'
    elsif number==8
      h = '---..'
    elsif number==9
      h = '----.'
    else
      h = 'Opción no válida'

    end
  end
  def to_morse
    self.generate_hash(@number)
  end
end
m = Morseable.new(3)
print m.to_morse
