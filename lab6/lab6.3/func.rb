# frozen_string_literal: true

def intg(n_val, a_val, b_val, lambda = nil)
  intrv = (b_val - a_val) / n_val.to_f
  int = 0
  while a_val < b_val
    if block_given?
      int += yield(a_val) * intrv
    elsif lambda.is_a? Proc
      int += lambda.call(a_val) * intrv
    end
    a_val += intrv
  end
  int
end
