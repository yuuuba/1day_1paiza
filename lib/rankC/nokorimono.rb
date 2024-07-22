purchase,first_sell,second_sell = gets.chomp.split.map(&:to_i)

def urenokori_calculation(purchase,first_sell,second_sell)
  amount_of_side_dishes = 1 - (purchase / 100.0 * first_sell)
  unsold = amount_of_side_dishes / 100.0 * second_sell
  puts unsold.round(5)
end

urenokori_calculation(purchase,first_sell,second_sell)
