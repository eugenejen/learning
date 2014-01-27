require_relative 'test_helper'
require 'test/unit'
require_relative 'complex_number'

include ComplexNumberArith

#
# Test suites for ComplexNumberArith::ComplexNumber
#
class TestComplexNumber < Test::Unit::TestCase
  def setup
    @one_zero = ComplexNumber.new(1, 0)
    @zero_one = ComplexNumber.new(0, 1)
    @one_one = ComplexNumber.new(1, 1)
    @zero_zero = ComplexNumber.new
  end

  def teardown
  end

  def test_initialize_no_arg
    assert_equal(@zero_zero.real, 0)
    assert_equal(@zero_zero.imaginary, 0)
  end

  def test_initialize_only_real
    assert_equal(@one_zero.real, 1)
    assert_equal(@one_zero.imaginary, 0)
  end

  def test_initialize_only_imaginary
    assert_equal(@zero_one.real, 0)
    assert_equal(@zero_one.imaginary, 1)
  end

  def test_initialize
    assert_equal(@one_one.real, 1)
    assert_equal(@one_one.imaginary, 1)
  end

  def test_to_s
    assert_equal(@one_one.to_s, '1 + 1 i')
  end

  def test_add
    c = @one_one + @one_one
    assert_equal(c.real, 2)
    assert_equal(c.imaginary, 2)
  end

  def test_substract
    c = @one_one - @one_one
    assert_equal(c.real, 0)
    assert_equal(c.imaginary, 0)
  end

  def test_multiply
    c = @one_one * @one_one
    assert_equal(c.real, 0)
    assert_equal(c.imaginary, 2)
  end

  def test_divide
    c = @one_one / @one_one
    assert_equal(c.real, 1)
    assert_equal(c.imaginary, 0)
  end

  def test_conjugate
    assert_equal(@one_one.conjugate.real, 1)
    assert_equal(@one_one.conjugate.imaginary, -1)
  end

  def test_devide_by_zero
    assert_raise RuntimeError do
      @one_one / @zero_zero
    end
  end
end
