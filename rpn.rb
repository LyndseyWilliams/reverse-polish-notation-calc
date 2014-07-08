

class RPNCalculator
  
  
  def initialize
    @inputs = []
  end

  
  def plus
    @inputs.push(@inputs.pop + @inputs.pop)
  end
  
  def minus
    var1, var2= @inputs.pop, @inputs.pop
    @inputs.push(var2-var1)
  end
  
  def divide
    var1,var2 =@inputs.pop.to_f, @inputs.pop.to_f
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



  def evaluate_characters(string)
    operators(string).each do |x|
      begin
        @inputs.push(Integer(x))
      rescue
        case x
        when /[a-zA-Z]/
          raise "That's an invalid number - try again!"
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
 
  def check_for_operators?(string)
    operators = ["*", "+", "/", "-"]
    operators.map { |e| string.include?(e) } 
  end


  def check_input(string)
    operators = ["*", "+", "/", "-"]
    if string.length >= 3 && check_for_operators?(string) != false 
        evaluate_characters(string)
    else
      raise "Insufficient Characters"
    end
  end

end


calculator3 = RPNCalculator.new
puts calculator3.check_input(ARGV[0])




  # atoi method: 

  # def atoi(string_num)
  #   integer_num = string_num.ord 
  #   new_integer_num = integer_num -48
  # end

  # When implementing this atoi method the results are skewed, ie: " 3 4 + " #=> -89.
  # I was not able to effectively debug this within the time limit for this challenge, but I welcome the
  # opportunity to discuss possible implementations. 



