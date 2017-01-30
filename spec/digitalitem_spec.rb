# You are on your own... good luck.
require_relative 'spec_helper'
require_relative '../lib/digital_item'

describe DigitalItem do
  before(:context) do
    @digital_item = DigitalItem.new('Generic digital item', 1.99)
  end

  describe 'Initialization' do
    it 'should be a digital item' do
      expect(@digital_item).to be_instance_of(DigitalItem)
    end
    it 'should be an item' do
      expect(@digital_item).to be_kind_of(Item)
    end
    it 'is assigned a name' do
      expect(@digital_item.name).to eq('Generic digital item')
    end
    it 'is assigned a price' do
      expect(@digital_item.price).to eq(1.99)
    end
  end

  describe 'Accessors' do
    it 'should be able to get quantity' do
      expect(@digital_item.quantity).to eq(1)
    end
    it 'should be able to get and set name' do
      @digital_item.name = 'New Name'
      expect(@digital_item.name).to eq('New Name')
    end
    it 'should be able to get and set price' do
      @digital_item.price = 44.99
      expect(@digital_item.price).to eq(44.99)
    end
    it 'should be able to get and set description' do
      expect(@digital_item.description).to eq('')
      @digital_item.description = 'test'
      expect(@digital_item.description).to eq('test')
    end
  end

  describe 'Methods' do
    it 'should not increase in quantity on stock' do
      result = @digital_item.stock 5
      expect(result).to eq(true)
      expect(@digital_item.quantity).to eq(1)
    end
    it 'should be able to sell any number of items' do
      result = @digital_item.sell 5000
      expect(result).to eq(true)
    end
    it 'should be able to sell items without decreasing quantity' do
      result = @digital_item.sell 99_999
      expect(result).to eq(true)
      expect(@digital_item.quantity).to eq(1)
    end
  end
end
