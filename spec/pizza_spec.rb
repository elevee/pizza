require 'rubygems'
require 'bundler/setup'
require 'rspec'
require_relative '../pizza'

describe Pizza::Pie do

  describe '.initialize' do
    it 'records all of the toppings' do
      toppings = [
        Pizza::Topping.new('mushrooms', vegetarian: true),
        Pizza::Topping.new('pepperoni')
      ]
      pizza = Pizza::Pie.new(toppings)

      expect(pizza.toppings).to eq(toppings)
    end

    it 'defaults the toppings to cheese only, if the pizza has no toppings' do
      pizza = Pizza::Pie.new

      expect(pizza.toppings.size).to eq(1)
      expect(pizza.toppings.first.name).to eq('cheese')
    end

  end  

  describe 'vegetarian?' do
    it 'will check if all toppings on a pizza are vegetarian - false version' do
      toppings = [
        Pizza::Topping.new('pineapple', vegetarian: true),
        Pizza::Topping.new('sausage'),
        Pizza::Topping.new('onions', vegetarian: true)
      ]

      pizza = Pizza::Pie.new(toppings)

      expect(pizza.vegetarian?).to eq(false)
    end

    it 'will check if all toppings on a pizza are vegetarian - true version' do
      toppings = [
        Pizza::Topping.new('pineapple', vegetarian: true),
        Pizza::Topping.new('onions', vegetarian: true)
      ]

      pizza = Pizza::Pie.new(toppings)

      expect(pizza.vegetarian?).to eq(true)
    end

  end

end 

describe Pizza::Topping do

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