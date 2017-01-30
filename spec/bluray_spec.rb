require_relative 'spec_helper'
require_relative '../lib/bluray'

describe Bluray do
  before(:context) do
    # initialize item
    @bluray = Bluray.new('Home Movie', 45.00, 120,
                         'Tom Hanks', 'Steven Spielberg')
  end

  # check initialization
  describe 'Initialization' do
    it 'is assigned a name' do
      expect(@bluray.name).to eq('Home Movie')
    end

    it 'is assigned a price' do
      expect(@bluray.price).to eq(45.00)
    end

    it 'is assigned a runtime' do
      expect(@bluray.runtime).to eq(120)
    end

    it 'is assigned a director' do
      expect(@bluray.director).to eq('Tom Hanks')
    end

    it 'is assigned a producer' do
      expect(@bluray.producer).to eq('Steven Spielberg')
    end
    # check that it is an instance of Bluray
    it 'should be a bluray' do
      expect(@bluray).to be_instance_of(Bluray)
    end
    # check that it is an extended from Item
    it 'should be an item' do
      expect(@bluray).to be_kind_of(Item)
    end
  end
  # check getters and setters
  describe 'getters and setters' do
    it 'assigns and reads the name' do
      @bluray.name = 'Pacific Rim'
      expect(@bluray.name).to eq('Pacific Rim')
    end

    it 'assigns and reads the price' do
      @bluray.price = 450
      expect(@bluray.price).to eq(450)
    end

    it 'assigns and reads the runtime' do
      @bluray.runtime = 41
      expect(@bluray.runtime).to eq(41)
    end

    it 'assigns and reads the director' do
      @bluray.director = 'Keanu Reeves'
      expect(@bluray.director).to eq('Keanu Reeves')
    end

    it 'assigns and reads the producer' do
      @bluray.producer = 'Your Mom'
      expect(@bluray.producer).to eq('Your Mom')
    end
  end
end
