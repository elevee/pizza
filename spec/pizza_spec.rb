require 'rubygems'
require 'bundler/setup'
require 'rspec'
require_relative '../pizza'

describe Pizza::Pie do

  describe '.initialize' do
    it "sets the name of the topping" do
      topping = Pizza::Topping.new('olives')

      expect(topping.name).to eq('olives')
    end

    it "should show if toppings are vegetarian" do
      topping = Pizza::Topping.new 'bell peppers', vegetarian: true

      expect(topping.vegetarian).to eq(true)
    end
  end

end 

describe Pizza::Topping do

end