# frozen_string_literal: true

# troyka class
class Troyka
  def initialize(a_val, b_val)
    @a = a_val.to_i
    @b = b_val.to_i
    @res = @a + @b
  end

  def out
    puts "Первое число: #{@a}, Второе число: #{@b}, Результат сложения: #{@res}"
  end
end

# troyka_scobkan class
class TroykaScobkah < Troyka
  def out
    puts "Первое число: (#{@a}), Второе число: (#{@b}), Результат сложения: (#{@res})"
  end
end
Obj1 = Troyka.new(1, 2)
Obj1.out
Obj2 = TroykaScobkah.new(3, 4)
Obj2.out
