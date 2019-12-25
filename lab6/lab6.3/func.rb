# frozen_string_literal: true

def intg(n_val, a_val, b_val, lambda = nil, &block)
  block = lambda unless block_given?
  intrv = (b_val - a_val) / n_val.to_f
  int = 0
  while a_val < b_val
    int += block.call(a_val) * intrv
    a_val += intrv
  end
  int
end
