require_relative 'item.rb'

class Bluray < Item
  def initialize(name, price, runtime, director, producer)
    super(name, price)
    @runtime = runtime
    @director = director
    @producer = producer
  end
  attr_accessor :name, :price, :runtime, :director, :producer 
end
