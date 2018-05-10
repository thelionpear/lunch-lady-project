
@main_dishes_array = [
{item_name: "Pizza", price: 7.00 },
{item_name: "Tacos", price: 6.00 },
{item_name: "Cheeseburger", price: 5.00 }
]

@side_dish_array = [
{item_name: "Fries", price: 4.00 },
{item_name: "Apple Slices", price: 3.00 }, 
{item_name: "Rice Pilaf", price: 2.00}, 
{item_name: "Breadsticks", price: 1.00}
]
@the_order = []

# make a user menu
def user_menu 
    system("clear")
    puts "================="
    puts "Welcome to Lunch"
    puts "Would you like to make an order? Y or N?"
    order_choice = gets.strip 
    if order_choice == "Y" || order_choice == "y"
        main_dishes 
    elsif order_choice == "N" || order_choice == "n"
        puts "Come back soon!"
        exit 
    else 
        puts "Invalid Choice."
        user_menu 
    end 
end 
#these dishes could be a class with a subclass of prices 
#make a list of main dishes
def main_dishes 
    system("clear")
    puts "Please select a main dish by entering the number below."
    puts "All main dishes come with two side orders."
    puts "===Main Dishes==="
    puts "1) Pizza for $7.00"
    puts "2) Tacos for $6.00"
    puts "3) Cheeseburger $5.00" 
    main_dish_choice = gets.strip 
    case main_dish_choice 
    when "1"
        puts "You would like #{@main_dishes_array[0][:item_name]} for $#{@main_dishes_array[0][:price]}, is that right? Puts Y or N?"
        main_dish_confirmation = gets.strip
        if main_dish_confirmation == "Y" || main_dish_confirmation == "y"
            puts "Confirmed. #{@main_dishes_array[0][:item_name]} for $#{@main_dishes_array[0][:price]}."
            @the_order << @main_dishes_array[0]
            side_dishes 
        elsif 
            main_dish_confirmation == "N" || main_dish_confirmation == "n"
            main_dishes 
        else 
            puts "Invalid choice."
        end 
    when "2"
        puts "You would like #{@main_dishes_array[1][:item_name]} for $#{@main_dishes_array[1][:price]}, is that right? Puts Y or N?"
        main_dish_confirmation = gets.strip
        if main_dish_confirmation == "Y" || main_dish_confirmation == "y"
            puts "Confirmed. #{@main_dishes_array[1][:item_name]} for $#{@main_dishes_array[1][:price]}."
            @the_order << @main_dishes_array[1]
            side_dishes 
        elsif 
            main_dish_confirmation == "N" || main_dish_confirmation == "n"
            main_dishes
        else 
            puts "Invalid choice."
        end  
    when "3"
        puts "You would like #{@main_dishes_array[2][:item_name]} for $#{@main_dishes_array[2][:price]}, is that right? Puts Y or N?"
        main_dish_confirmation = gets.strip
        if main_dish_confirmation == "Y" || main_dish_confirmation == "y"
            puts "Confirmed. #{@main_dishes_array[2][:item_name]} for $#{@main_dishes_array[2][:price]}."
            @the_order << @main_dishes_array[2]
            side_dishes 
        elsif 
            main_dish_confirmation == "N" || main_dish_confirmation == "n"
            main_dishes
        else 
            puts "Invalid choice."
        end 
    else 
        puts "Invalid choice." 
        main_dishes 
    end 
end 


# make a list of side dishes 

def side_dishes 
    system("clear")
    puts "Please select two side dishes by their number."
    puts "===Side Dishes==="
    puts "1) Fries for $4.00"
    puts "2) Apple Slices $3.00"
    puts "3) Rice Pilaf $2.00"
    puts "4) Breadsticks $1.00"
    puts "What is your first selection?"
    first_side_dish = gets.strip 
    case first_side_dish
    when "1"
        puts "You would like #{@side_dish_array[0][:item_name]}, for #{@side_dish_array[0][:price]}, is that right? Puts Y or N?"
        first_side_dish_confirmation = gets.strip
        if first_side_dish_confirmation == "Y" || first_side_dish_confirmation == "y"
            puts "Confirmed. #{@side_dish_array[0][:item_name]} for #{@side_dish_array[0][:price]}."
            @the_order << @side_dish_array[0]
        elsif 
            first_side_dish_confirmation == "N" || first_side_dish_confirmation == "n"
            side_dishes
        else 
            puts "Invalid choice."
            side_dishes
        end 
    when "2"
        puts "You would like #{@side_dish_array[1][:item_name]}, for #{@side_dish_array[1][:price]}, is that right? Puts Y or N?"
        first_side_dish_confirmation = gets.strip
        if first_side_dish_confirmation == "Y" || first_side_dish_confirmation == "y"
            puts "Confirmed. #{@side_dish_array[1][:item_name]} for #{@side_dish_array[1][:price]}."
            @the_order << @side_dish_array[1]
        elsif 
            first_side_dish_confirmation == "N" || first_side_dish_confirmation == "n"
            side_dishes
        else 
            puts "Invalid choice."
            side_dishes
        end  
    when "3"
        puts "You would like #{@side_dish_array[2][:item_name]}, for #{@side_dish_array[2][:price]}, is that right? Puts Y or N?"
        first_side_dish_confirmation = gets.strip
        if first_side_dish_confirmation == "Y" || first_side_dish_confirmation == "y"
            puts "Confirmed. #{@side_dish_array[2][:item_name]} for #{@side_dish_array[2][:price]}."
            @the_order << @side_dish_array[2]
        elsif 
            first_side_dish_confirmation == "N" || first_side_dish_confirmation == "n"
            side_dishes
        else 
            puts "Invalid choice." 
            side_dishes
        end  
    when "4"
        puts "You would like #{@side_dish_array[3][:item_name]}, for #{@side_dish_array[3][:price]}, is that right? Puts Y or N?"
        first_side_dish_confirmation = gets.strip
        if first_side_dish_confirmation == "Y" || first_side_dish_confirmation == "y"
            puts "Confirmed. #{@side_dish_array[3][:item_name]} for #{@side_dish_array[3][:price]}."
            @the_order << @side_dish_array[3]
        elsif 
            first_side_dish_confirmation == "N" || first_side_dish_confirmation == "n"
            side_dishes
        else 
            puts "Invalid choice."
            sides_dishes
        end 
    else 
        puts "Invalid choice." 
        side_dishes 
    end 
    puts "What is your second selection?"
    second_side_dish = gets.strip 
    case second_side_dish
    when "1"
        puts "You would like #{@side_dish_array[0][:item_name]}, for #{@side_dish_array[0][:price]}, is that right? Puts Y or N?"
        second_side_dish_confirmation = gets.strip
        if second_side_dish_confirmation == "Y" || second_side_dish_confirmation == "y"
            puts "Confirmed. #{@side_dish_array[0][:item_name]} for #{@side_dish_array[0][:price]}."
            @the_order << @side_dish_array[0]
            order_print_out
        elsif 
            second_side_dish_confirmation == "N" || second_side_dish_confirmation == "n"
            side_dishes 
        else 
            puts "Invalid choice."
            side_dishes
        end 
    when "2"
        puts "You would like #{@side_dish_array[1][:item_name]}, for #{@side_dish_array[1][:price]}, is that right? Puts Y or N?"
        second_side_dish_confirmation = gets.strip
        if first_side_dish_confirmation == "Y" || second_side_dish_confirmation == "y"
            puts "Confirmed. #{@side_dish_array[1][:item_name]} for #{@side_dish_array[1][:price]}."
            @the_order << @side_dish_array[0]
            order_print_out
        elsif 
            second_side_dish_confirmation == "N" || second_side_dish_confirmation == "n"
            side_dishes 
        else 
            puts "Invalid choice."
            side_dishes
        end  
    when "3"
        puts "You would like #{@side_dish_array[2][:item_name]}, for #{@side_dish_array[2][:price]}, is that right? Puts Y or N?"
        second_side_dish_confirmation = gets.strip
        if second_side_dish_confirmation == "Y" || second_side_dish_confirmation == "y"
            puts "Confirmed. #{@side_dish_array[2][:item_name]} for #{@side_dish_array[2][:price]}."
            @the_order << @side_dish_array[0]
            order_print_out 
        elsif 
            second_side_dish_confirmation == "N" || second_side_dish_confirmation == "n"
            side_dishes 
        else 
            puts "Invalid choice." 
            side_dishes
        end  
    when "4"
        puts "You would like #{@side_dish_array[3][:item_name]}, for #{@side_dish_array[3][:price]}, is that right? Puts Y or N?"
        second_side_dish_confirmation = gets.strip
        if second_side_dish_confirmation == "Y" || second_side_dish_confirmation == "y"
            puts "Confirmed. #{@side_dish_array[3][:item_name]} for #{@side_dish_array[3][:price]}."
            @the_order << @side_dish_array[3]
            puts "*************"
            order_print_out 
        elsif 
            second_side_dish_confirmation == "N" || second_side_dish_confirmation == "n"
            side_dishes 
        else 
            puts "Invalid choice."
            side_dishes
        end 
    else 
        puts "Invalid choice." 
        side_dishes 
    end

end 


#ask if they want to make any special notes for their order

# print order to them

def order_print_out
    puts "Your order is #{@the_order[0][:item_name]} with a side of #{@the_order[1][:item_name]} and #{@the_order[2][:item_name]}."
    puts  "Your total is $#{@the_order[0][:price] + @the_order[1][:price] + @the_order[2][:price]}."
    puts "Thank you for your order."
    exit
end 
# confirm the order 


user_menu 