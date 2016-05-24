class Equ2

  attr_accessor :a, :b, :c
  attr_reader :delta, :x1, :x2

  def initialize
    @a = nil
    @b = nil
    @c = nil
    @delta = nil
    @x1 = nil
    @x2 = nil
  end

  def calc
    @delta = ((@b**2)-(4*@a*@c))

    if @delta >= 0
      @x1 = ((-@b+(@delta**(0.5)))/(2*@a))
      @x2 = ((-@b-(@delta**(0.5)))/(2*@a))
    end
  end

end
