module Pizza
  class Pie

  end

  class Topping

    attr_accessor :name
    
    # Instantiates a new topping
    # Name - The string name of the topping
    # Returns a new Topping object

    def initialize(name)
      @name = name
    end

  end
end