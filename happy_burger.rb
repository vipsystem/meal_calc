#Author: Kevin Austin


prompt = "> "
puts "Welcome to HappyBurger Meal Calculator"

# Asks for numbers of plain burgers
puts "Enter the number of plain burgers you want: "
print prompt

while i_num = gets.chomp.to_i
  case 
  when i_num >= 0 
    puts "Item(s) in your cart:\n#{i_num}  plain burgers added to cart." 
    break
  else i_num < 0
    puts "Nice try! You must use a positive number."
    puts "Enter the number of plain burgers you want: "
    print prompt
  end
end
#Asks for number of cheeseburgers
puts "Enter the number of cheeseburgers you want: "
0
while h_num = gets.chomp.to_i
  case 
  when h_num >= 0 
    puts "Item(s) in your cart:\n#{h_num} cheeseburgers added to cart.\n#{i_num} plain burgers."
    break
  else h_num < 0
    puts "Nice try! You must use a positive number."
    puts "Enter the number of cheeseburgers you want: "
    print prompt
  end
end
 
# Asks for number of double burgers
puts "Enter the number of double burgers you want: "

while g_num = gets.chomp.to_i
  case 
  when g_num >= 0 
    puts "Item(s) in your cart:\n#{g_num} double burgers added to cart.\n#{h_num} cheeseburgers.\n#{i_num} plain burgers."
    break
  else g_num < 0
    puts "Nice try! You must use a positive number."
    puts "Enter the number of double burgers you want: "
    print prompt
  end
end

# Asks for number of double burgers with cheese
puts "Enter the number of double burgers with cheese you want: "

while f_num = gets.chomp.to_i
  case 
  when f_num >= 0 
    puts "Item(s) in your cart:\n#{f_num} double burgers with cheese added.\n#{g_num} double burgers.\n#{h_num} cheeseburgers.\n#{i_num} plain burgers."
    break
  else f_num < 0
    puts "Nice try! You must use a positive number."
    puts "Enter the number of double burgers with cheese you want: "
    print prompt
  end
end

# SMC Student diner discount question
puts "SMC Student Diner discount with each burger? [1=Yes/0=NO]: "

while d_num = gets.chomp.to_i
  case 
  when d_num == 1 
    puts "$0.50 discount has been deducted from each burger in your cart."
    break
  when d_num == 0
    puts "**Consider joining SMC Diner Discount program."
    break 
  else d_num != 0||1
    puts "Nice try! You must use answer 1 for YES or 0 for NO."
    puts "SMC Student diner discount with each burger? [1=Yes/0=NO]: "
    print prompt
  end
end 

puts "Item(s) in your cart:\n#{f_num} double burgers with cheese added.\n#{g_num} double burgers.\n#{h_num} cheeseburgers.\n#{i_num} plain burgers."
 
# Calculates total burgers in cart
total_burgers = i_num + h_num + g_num + f_num 

# Asks for how many fries and drinks 
puts "How many fries and drinks do you want with your order? "

while e_num = gets.chomp.to_i
  case 
  when e_num < 0
    puts "Nice try! You must use a positive number."
    print prompt
  when e_num > total_burgers
    puts "Sorry! Each burger is limited to one order of fries and a drink."
    puts "You can order up to #{total_burgers} orders of fries and a drink with this order."
    puts "How many fries and drinks do you want with your order? "
    print prompt
  else e_num <= total_burgers
    puts "Items in your cart:\n#{e_num} fries and drinks added.\n#{f_num} double burgers with cheese.\n#{g_num} double burgers.\n#{h_num} cheeseburgers.\n#{i_num} plain burgers." 
    break
  end
end 

# Calculates Subtotal of cart
subtotal = (i_num * 2.00) + (h_num * 2.50) + (g_num * 4.00) + (f_num * 5.00) + (e_num * 2.00) 

# Calculates SMC Diner Discount 
if d_num == 1
  dd_approve = total_burgers.to_f * 0.50
elsif d_num != 1
  dd_approve = 0
end

# Large volume discount
if total_burgers > 10
  puts "Your order qualifies for a 5% discount."
  vol_approve = subtotal.to_f * 0.05
elsif total_burgers < 10
  vol_approve = 0
end

# Calculates total reductions (if applicable)
reductions = dd_approve.to_f + vol_approve.to_f

#Calculates Tax for meal
taxrate = 0.0825
tax = subtotal * taxrate

# Cart numbers
puts "Your Cart Totals:"
"Meal Cost:  $#{subtotal}"
print sprintf( "Meal Cost = $%10.2f", subtotal ), "\n"
"Reductions: $#{reductions}"
print sprintf( "Reductions = $%10.2f", reductions ), "\n"
"Sales Tax:  $#{tax}"
print sprintf( "Sales Tax = $%10.2f", tax ), "\n"
"Total Cost: $#{subtotal + tax - reductions}"
print sprintf( "Total Cost = $%10.2f", subtotal + tax - reductions ), "\n"
puts "Thank you for visiting the HappyBurger Calculator!"