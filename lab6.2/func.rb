
def S(accuracy, r)
  a = r
  b = 100
  n = 6
  realP = 2 * Math::PI * r
  enum = Enumerator.new do |y|
        p = n*a;
        a = Math.sqrt(2 * r**2 - r * Math.sqrt(4 * r * r - a**2));
        n *= 2;
        b = (p - realP).abs;
        y.yield accuracy, b, a, p
  end.take_while {|accuracy, b, a, p| ((accuracy < b) & (a > 0))}
  return enum.map { |n| n[3] }
end