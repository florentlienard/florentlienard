require_relative "race.rb"
# 1. Print welcome
puts "Welcome!"
puts
sleep(1)
# 2. Get horses 🐴
# => Create 5 horses in an array
puts "Here are our 5 amazing horses:"
sleep(0.5)
horses = ["Tempête", "Tornado Mélanchon", "Reactor 5000", "Brocéliande du Poitou", "Bouboule"]
# 3. Get user's bet
# => display horses list
display_horses(horses)
# =>  Ask user's bet
sleep(1)
puts "On which horse do you bet? 💰 (1-5)"
print ">"
# =>  Store user's bet in a variable
index = gets.chomp.to_i - 1
bet = horses[index]
puts "You bet on #{bet}"
# 4. Run the race 🐴
sleep(1)
puts "Race is on!"
sleep(1)
# => loop on 4 laps
shuffled_horses = run(horses)
# 5. Print results
# =>  display first horse
winner = shuffled_horses.first
puts
puts "The winner is #{winner}"
# =>  check if user's bet matches winner
display_bet_result(winner, bet)
