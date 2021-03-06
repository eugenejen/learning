require_relative 'test_helper'
require 'test/unit'
require_relative 'animal'

#
# Test suites for Animal Class
#
class TestAnimal < Test::Unit::TestCase
  def test_animal
    animal = Animal.new
    assert_equal(animal.alive, true)
  end

  def test_human
    human = Human.new('michael jackson')
    assert_equal(human.name, 'michael jackson')
  end

  def test_kill
    animal = Animal.new
    animal.kill
    assert_equal(animal.alive, false)
  end

  def test_speak
    human = Human.new('john')
    assert_equal(human.speak, 'john speaks')
  end
end
