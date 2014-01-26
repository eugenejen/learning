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
      begin
        denominator = other * other.conjugate
        numerator = ComplexNumber.new(@real, @imaginary) * other.conjugate
        ComplexNumber.new(numerator.real / denominator.real,
                          numerator.imaginary / denominator.real)
      rescue
        raise "divide by zero"
      end
    end

    def conjugate
      ComplexNumber.new(@real, -1 * @imaginary)
    end
    
    def to_s
      "#{@real.to_s} + #{@imaginary.to_s} i"
    end
  end
end
