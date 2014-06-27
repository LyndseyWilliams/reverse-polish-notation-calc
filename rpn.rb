

class RPNCalculator
  def initialize
    @inputs = []
  end
  
  def plus
    @inputs.push(@inputs.pop + @inputs.pop)
  end
  
  def minus
    var1= @inputs.pop
    var2= @inputs.pop
    @inputs.push(var2-var1)
  end
  
  def divide
    var1 = pop.to_f
    var2 = pop.to_f
    @inputs.push(var2/var1)
  end
  
  def times
    @inputs.push(@inputs.pop * @inputs.pop)
  end
  
  def value
    @inputs.last
  end
  
  def convert_string_to_num(string_num)
  integer_num = string_num.ord 
  new_integer_num = integer_num -48
end


  def operators(string)
    string.split(' ').map do |e|
      begin
       convert_string_to_num(e)
      rescue
        e.to_sym
      end
    end
  end



  
  def evaluate(string)
    operators(string).each do |x|
      begin
        @inputs.push(convert_string_to_num(x))
      rescue
        case x
        when :+
          plus
        when :-
          minus
        when :*
          times
        when :/
          divide
      end
    end
  end
  value 
 end
end




# calculator = RPNCalculator.new
# puts calculator.evaluate('2 2 +')

# calculator2 = RPNCalculator.new
# puts calculator2.evaluate("3 4 + 5 6 + *")

calculator3 = RPNCalculator.new
puts calculator3.evaluate("2 2 +")
# puts calculator3.operators('2 2 +')


