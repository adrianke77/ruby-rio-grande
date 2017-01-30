require_relative 'item.rb'

class Book < Item
  def initialize(name, price, pages, author)
    super(name, price)
    @author = author
    @pages = pages
  end
  attr_accessor :name, :price, :pages, :author
end
