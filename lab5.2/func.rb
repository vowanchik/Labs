
def stroki (arr)
	answ = []
arr.each {|str|
	n = 0
	pr = 0
	first_name = ""
	full_str = ""
	patronymic = ""
	last_name = ""
    str.each_char { |char|
	    first_name += char + '.' if n == 0
	    if pr == 1 
	    	patronymic += char + '.' 
	    	pr += 1
	    end
	   last_name += char if pr == 3
	    pr += 1 if char == ' '
	    n += 1
    }
  full_str += last_name.chomp + ' ' + first_name + patronymic + "\n"
  answ.push(full_str)
}
return answ
end
