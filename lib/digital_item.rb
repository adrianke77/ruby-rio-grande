# You are on your own... good luck.
require_relative 'item.rb'

class DigitalItem < Item
  def initialize(name, price)
    super(name, price)
    @quantity = 1
    @description = ''
  end

  attr_accessor :name, :price, :description
  attr_reader :quantity

  def sell(_amount)
    true
  end

  def stock(_amount)
    true
  end
end
