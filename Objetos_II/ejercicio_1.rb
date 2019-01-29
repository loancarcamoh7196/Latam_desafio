class Anything
  attr_accessor :a
  def foo
    @a = 5
  end
  def bar
    @a += 1
  end
end
any = Anything.new
puts any.foo
puts any.bar
puts any.a = 4
