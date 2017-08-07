#calculator
require_relative 'calculator.rb'

answer = ""
until answer == "OFF"
  # ask user a number
  puts "First number?"
  print ">"
  # store it in a variable
  first_number = gets.chomp.to_f
  # ask user for operator
  puts "What's the operator? (+, *, /, -)"
  # store it in a variable
  operator = gets.chomp
  # ask user a second number
  puts "Second number?"
  print ">"
  # store it in a variable
  second_number = gets.chomp.to_f
  # check for operator (condition)
  result = calculator(first_number, second_number, operator)
  # compute the result
  # display the result
  puts "The result is #{result}" unless result == nil
  puts "AC / OFF"
  print ">"
  answer = gets.chomp
end
puts "Goodbye!"
