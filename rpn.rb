

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
  
  def operators(string)
    string.split(' ').map do |e|
      begin
        Integer(e)
      rescue
        e.to_sym
      end
    end
  end
  
  def evaluate(string)
    operators(string).each do |x|
      begin
        @inputs.push(Integer(x))
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


def convert_string_to_num
end

calculator = RPNCalculator.new
puts calculator.evaluate('2 2 +')

calculator2 = RPNCalculator.new
puts calculator2.evaluate("3 4 + 5 6 + *")











