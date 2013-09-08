module Pizza

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

  class Pie

    attr_accessor :toppings

    cheese_default = Pizza::Topping.new('cheese', vegetarian: true)

    def initialize(toppings=[cheese_default])
      @toppings = toppings
    end

  end


  
end