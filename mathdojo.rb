class MathDojo
    # your code here
        attr_reader :result

        def initialize
            @result =0
        end    

        def add(*numbers)
            # *numbers allowed varied parameters to be passed
            @result += numbers.flatten.inject(0, :+)
            # flatten squeezes all arrays into one array
			#inject combines all elements by applying the operator (:+)
            self
            # 'self' allows chaining, returns @result for the class 
        end

        def subtract(*numbers)
            @result -= numbers.flatten.reduce(0, :+)
            self
        end    
    end
challenge1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).result # => 4
challenge2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result # => 23.15
puts challenge1
puts challenge2


#-------------------(or)-----------------------


class MathDojo
    attr_accessor :result

    def initialize
        @result =0 
    end
    
    def add *numbers
        numbers.each { |number| @result += number}
        # adds the passed in numbers parameter(s) to the @result attribute 
        self
        # 'self' allows chaining, returns @result for the class 
    end
    
    def subtract *numbers
        numbers.each {|number| @result -= number}
        self
    end
end

problem1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).result # => 4
puts problem1 