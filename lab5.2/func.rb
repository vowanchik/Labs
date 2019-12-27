def format_in_first_way (arr)
	arr_new = arr.map {|str|
			last_name, first_name, middle_name = str.split
			str = "#{first_name} #{middle_name} #{last_name}"
	}
	return arr_new
end

def format_in_second_way (arr)
	arr_new = arr.map {|str|
		 last_name, first_name, middle_name = str.split
		str = "#{last_name} #{first_name[0]}. #{middle_name[0]}."
	}
	return arr_new
end
def format_end (arr)
    return [ format_in_first_way(arr), format_in_second_way(arr)]
end
