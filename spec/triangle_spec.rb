require('rspec')
require('triangle')


describe('Triangle#sides') do
  it('checks to see if is a triangle') do
    tri = Triangle.new(1,2,5)
    expect(tri.is_a_triangle?).to(eq(false))
  end
  it('checks to see if all sides are equal') do
    tri = Triangle.new(2,2,2)
    expect(tri.is_equalateral?).to(eq(true))
  end
  it('checks to see if is an isosceles triangle') do
    tri = Triangle.new(2,2,3)
    expect(tri.is_isosceles?).to(eq(true))
  end
  it('checks to see if is a scalene triangle') do
    tri = Triangle.new(3,4,5)
    expect(tri.is_scalene?).to(eq(true))
  end
  it('returns the kind of triangle') do
    tri = Triangle.new(2,2,3)
    expect(tri.what_kind).to(eq('isosceles'))
  end
  it('returns the kind of triangle') do
    tri = Triangle.new(3,4,5)
    expect(tri.what_kind).to(eq('scalene'))
  end
  it('returns the kind of triangle') do
    tri = Triangle.new(2,2,2)
    expect(tri.what_kind).to(eq('equalateral'))
  end
end
