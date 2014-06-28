reverse-polish-notation-calulator
=================================

Implement a RPN evaluator in Ruby.

--------------------
Implement a RPN evaluator in Ruby. It should be able to evaluate the following strings and answer with the corresponding numbers:
 “12+”=3
 “42/”=2
 “234+*”=14
 “34+56+*”=77
 “134-”=9

And should provide an error message for the following types of errors
 “1 +” (not enough arguments)
 “a b +” (invalid number)

I should be able to evaluate a string from the command line in the following way:
$ ruby rpn.rb "1 2 +"

