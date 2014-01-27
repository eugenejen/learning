#
# Animal kingdom
#

class Animal
  # Animal to simulate class
  attr_reader :alive

  def initialize(alive = true)
    @alive = alive
  end

  def kill
    @alive = false
  end
end

#
# Human is part of Animal Kingdom
#
class Human < Animal
  attr_accessor :name

  def initialize(name)
    super()
    @name = name
  end

  def speak
    "#{@name} speaks"
  end
end
