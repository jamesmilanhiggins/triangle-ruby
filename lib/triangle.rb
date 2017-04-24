class Triangle
  define_method(:initialize) do |side1, side2, side3|
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  define_method(:is_a_triangle?) do
    !(@side1.+(@side2) <= @side3 || @side2.+(@side3) <= @side1 || @side1.+(@side3) <= @side2)
  end
  define_method(:is_equalateral?) do
    @side1.eql?(@side2) && @side2.eql?(@side3)
  end
  define_method(:is_isosceles?) do
    if is_a_triangle? && !is_equalateral?
      @side1 == @side2 || @side2 == @side3 || @side1 == @side3
    end
  end
  define_method(:is_scalene?) do
    if is_a_triangle?
      @side1 != @side2 && @side2 != @side3
    end
  end

  define_method(:what_kind) do
    if is_a_triangle? && is_equalateral?
      'equalateral'
    elsif is_a_triangle? && is_scalene?
      'scalene'
    elsif is_a_triangle? && is_isosceles?
      'isosceles'
    else
      'not a triangle'
    end
  end
end
