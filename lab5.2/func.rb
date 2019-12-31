# frozen_string_literal: true

def format_in_first_way(arr)
  arr_new = arr.map do |str|
    last_name, first_name, middle_name = str.split
    "#{first_name} #{middle_name} #{last_name}"
  end
  arr_new
end

def format_in_second_way(arr)
  arr_new = arr.map do |str|
    last_name, first_name, middle_name = str.split
    "#{last_name} #{first_name[0]}. #{middle_name[0]}."
  end
  arr_new
end

def format_end(arr)
  [format_in_first_way(arr), format_in_second_way(arr)]
end
