module Pizza

  class Pie

    attr_accessor :toppings

    def initialize(toppings = [Topping.new('cheese', vegetarian: true)])
      @toppings = toppings
    end

    def vegetarian?
      self.toppings.any? do |topping|
        topping.vegetarian = false
      end
    end

  end

  class Topping

    attr_accessor :name, :vegetarian

    # Instantiates a new topping
    # Name - The string name of the topping
    # Returns a new Topping object

    def initialize(name, vegetarian: false)
      @name = name
      @vegetarian = vegetarian
    end

  end


  
end