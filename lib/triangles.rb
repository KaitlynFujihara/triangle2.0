class Triangle
  def initialize (sidea, sideb, sidec)
    @sidea = sidea
    @sideb = sideb
    @sidec = sidec
  end

  def type
    if @sidea + @sideb <= @sidec || @sideb + @sidec <= @sidea || @sidea + @sidec <= @sideb
    "This is not a triangle"
    elsif @sidea == @sideb && @sideb == @sidec
    "This is an equilateral triangle"
    elsif @sidea == @sideb || @sideb == @sidec ||  @sidea == @sidec
    "This is an isoceles triangle"
    elsif @sidea != @sideb && @sideb != @sidec && @sidea != @sidec
    "This is a scalene triangle"
    else
    "Let's eat Pho"
    end
  end
end
