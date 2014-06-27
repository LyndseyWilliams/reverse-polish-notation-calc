

 
puts calculate_rpn("1 2 +") == 3 
puts calculate_rpn("4 2 /") == 2 
puts calculate_rpn("2 3 4 + *") == 14 
puts calculate_rpn("3 4 + 5 6 + *") == 77 
puts calculate_rpn("13 4 -") == 9 
puts calculate_rpn("1 +")  == "not enough arguments"
puts calculate_rpn("a b +") == "invalid number" 
 

