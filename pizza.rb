module Pizza

  class Pie

    attr_accessor :toppings

    def initialize(toppings = [Topping.new('cheese', vegetarian: true)])
      @toppings = toppings
    end

    def vegetarian?
      # Returns boolean for if any item in toppings array returns NOT vegetarian
      !@toppings.any? { |topping| !topping.vegetarian }  
    end

    def add_topping(topping_object)
      self.toppings.push(topping_object)
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