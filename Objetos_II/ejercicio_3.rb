class Store
  attr_reader :name
  def initialize(name)
    @name = name
  end
end
store = Store.new('Tienda 1')
puts store.name
