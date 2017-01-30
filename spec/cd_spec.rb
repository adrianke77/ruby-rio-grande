require_relative 'spec_helper'
require_relative '../lib/cd'

describe Cd do
  before(:context) do
    # initialize item
    @cd = Cd.new('Underarm Wattles', 20.00, 12, 'Madonna', 60)
  end

  # check initialization
  describe 'Initialization' do
    it 'is assigned a name' do
      expect(@cd.name).to eq('Underarm Wattles')
    end

    it 'is assigned a price' do
      expect(@cd.price).to eq(20.00)
    end

    it 'is assigned a number of tracks' do
      expect(@cd.tracks).to eq(12)
    end

    it 'is assigned an artist' do
      expect(@cd.artist).to eq('Madonna')
    end

    it 'is assigned a runtime' do
      expect(@cd.runtime).to eq(60)
    end
    # check that it is an instance of Cd
    it 'should be a cd' do
      expect(@cd).to be_instance_of(Cd)
    end
    # check that it is an extended from Item
    it 'should be an item' do
      expect(@cd).to be_kind_of(Item)
    end
  end
  # check getters and setters
  describe 'getters and setters' do
    it 'assigns and reads the name' do
      @cd.name = 'Underchin Wattles'
      expect(@cd.name).to eq('Underchin Wattles')
    end

    it 'assigns and reads the price' do
      @cd.price = 999
      expect(@cd.price).to eq(999)
    end
    
    it 'assigns and reads the number of tracks' do
      @cd.tracks= 41
      expect(@cd.tracks).to eq(41)
    end
    
    it 'assigns and reads the artist' do
      @cd.artist = 'Janis Joplin'
      expect(@cd.artist).to eq('Janis Joplin')
    end
    
    it 'assigns and reads the runtime ' do
      @cd.runtime= 120
      expect(@cd.runtime).to eq(120)
    end
  end
end
