
def stroki (str)
	
    i=0
    fam1 = ""
    puts "Введённые данные: #{str}"
    fam = "@"
    flag = false
    puts "Новая последовательность: "
    loop do
    	j=0
    	pr=0
    	str1 = str[i]   
       loop do
	       	if pr == 2 then	
	       		if flag == true
	       	    	fam += str1[j]
	       	    end
	       		if fam[0] == "@" then
	       		fam[0] = str1[j]
	       		flag = true
	       	    end
	       	    
	       	end
	       	if str1[j] ==" " 
	       	 	pr += 1
	        end
	    	j += 1
	        break if j == str1.length-1
       end
       j=0
       pr=0
       fam += " "
	   fam += str1[0]
	   fam += "."
	   loop do
	   	 	if pr == 1
	       		fam += str1[j]
	       		fam += "."
	       		break
	       	end
	       	if str1[j] ==" " 
	       	 	pr += 1
	        end
	    	j += 1
	        break if j == str1.length-1
	   end
	   fam1 += fam
	   fam1 += "\n"
	   fam.clear
	   str1 = []
        i += 1
    	break if i == str.length
    end
    return fam1
end