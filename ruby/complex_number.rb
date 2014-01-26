module ComplexNumberArith
  # Complex number basic arithmetics
  class ComplexNumber
    attr_accessor :real, :imaginary

    def initialize(real = 0, imaginary = 0)
      @real, @imaginary = real, imaginary
    end

    def +(other)
      ComplexNumber.new(@real + other.real, @imaginary + other.imaginary)
    end

    def -(other)
      ComplexNumber.new(@real - other.real, @imaginary - other.imaginary)
    end

    def *(other)
      new_real = @real * other.real - @imaginary * other.imaginary
      new_imaginary = @imaginary * other.real + @real * other.imaginary
      ComplexNumber.new(new_real, new_imaginary)
    end

    def /(other)
      denominator = other * conjugate(other)
      numerator = ComplexNumber.new(@real, @imaginary) * conjugate(other)
      ComplexNumber.new(numerator.real / denominator.real,
                        numerator.imaginary / denominator.real)
    end

    def conjugate(complex_number)
      ComplextNumber.new(complex_number.real, -1 * complex_number.imaginary)
    end
    
    def to_s
      "#{@real} + #{@imaginary} i"
    end
  end
end
