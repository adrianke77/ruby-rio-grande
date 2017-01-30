require_relative 'item.rb'

class Cd < Item
  def initialize(name, price, tracks, artist, runtime)
    super(name, price)
    @tracks = tracks
    @artist = artist
    @runtime = runtime
  end
  attr_accessor :name, :price, :tracks, :artist, :runtime
end
