# Instacart
require_relative 'cart.rb'
# 1. Print Welcome
puts "--------------------"
puts "Welcome to Instacart"
puts "--------------------"
puts

store = {
  "kiwi" => { price: 1.25, stock: 20 },
  "banana" => { price: 0.5, stock: 20 },
  "mango" => { price: 4, stock: 10},
  "asparagus" => { price: 9, stock: 25}
} # add stock

puts "Available today:"
store.each do |product, infos| # infos=> Hash {price: 9, stock: 10}
  #kiwi: 1.25€ (5 available)
  puts "#{product}: #{infos[:price]}€ (#{infos[:stock]} available)"
end
cart = {}
item = ""
until item == "quit"
  item = ask_for_item
  if item != 'quit' && store.include?(item) && !cart.include?(item)
    quantity = ask_for_quantity
    stock = store[item][:stock]
    if stock >= quantity
      cart[item] = quantity
      store[item][:stock] -= quantity
    else
      puts "Sorry, there are only #{stock} #{item}s left.."
    end
  elsif item == "quit"
  elsif !store.include?(item)
    puts "Product is not available"
  elsif cart.include?(item)
    quantity = ask_for_quantity
    stock = store[item][:stock]
    if stock >= quantity
      cart[item] += quantity
      store[item][:stock] -= quantity
    else
      puts "Sorry, there are only #{stock} #{item}s left.."
    end
  end
end
# 4. Print the bill (checkout)
#   iterate through cart
puts "-------BILL---------"
checkout = compute_bill(cart, store)
puts "TOTAL: #{checkout}€"
puts "--------------------"


