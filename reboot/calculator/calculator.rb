#implement a method calculator
def calculator(x, y, operator)
  case operator
  when "+"
    result = x + y
  when "-"
    result = x - y
  when "*"
    result = x * y
  when "/"
    result = x / y
  else
    puts "Please write one of these operators : +, -, *, /"
  end
  return result
end
