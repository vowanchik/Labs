

def S(accuracy,r)
  a = r
  b = 100
  n = 6
  realP = 2 * Math::PI * r
  while ((accuracy < b) & (a > 0))
    
        p = n*a;
        a = Math.sqrt(2 * r**2 - r * Math.sqrt(4 * r * r - a**2));
        n *= 2;
        b = (p - realP).abs;
    end
    return p
end
