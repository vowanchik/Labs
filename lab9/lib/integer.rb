# Integer class
class Integer
  def palindrome?
    return self.to_s.reverse == self.to_s
  end

  def sum_with_reversed
    reversed = to_s.reverse.to_i
    self + reversed
  end
end
