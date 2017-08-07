def ask_for_quantity
  puts "How many?"
  print ">"
  return gets.chomp.to_i
end

def ask_for_item
  puts
  puts "Which item? (or 'quit' to checkout)"
  print ">"
  return gets.chomp.downcase
end

def compute_bill(cart, store)
  checkout = 0
  cart.each do |item, quantity|
    price = store[item][:price] # find price in store
    subtotal = quantity * price
    puts "#{item}: #{quantity} X #{price}€ = #{subtotal}€"
    checkout += subtotal
  end
  return checkout
end
