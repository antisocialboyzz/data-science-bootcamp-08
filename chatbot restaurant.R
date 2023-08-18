# Pizza menu
p_id <- c(1, 2, 3, 4)
p_menu <- c("Hawaiian", "Pepperoni", "Seafood", "Fully Cheesy")
p_price <- c(120, 150, 180, 160)
p_df <- data.frame(p_id, p_menu, p_price) 

# Size option
s_id <- c(1, 2)
s_option <- c("normal", "up-sized")
s_price <- c(0, 20)
s_df <- data.frame(s_id, s_option, s_price)

# Drinks menu
d_id <- c(1, 2, 3)
d_option <- c("water", "lemonade", "coca-cola")
d_price <- c(10, 20, 25)
d_df <- data.frame(d_id, d_option, d_price)


chatbot <- function(menu) {
  print("Welcome our beloved customers to Bobby's Pizza! ")
  welcome <- readline("Are you ready to start ordering? [yes/no]")
  if (welcome == "yes") {
    ## menu selection
    print("This is the manu available today")
    print(p_df)
    user_menu <- readline("What do you want to order?, please specify the order id :")
    if (user_menu <= 3) {
      print(p_df)
      print(paste("got it! ",p_df[p_df$p_id == user_menu,2]))
    } else {
      print("please re-look at the pizza menu")
      stop()
    }
    
    ## size selection
    print("These are the sizes we currently offer")
    print(s_df)
    user_size <- readline("What size would you want?, please specify the size id :")
    print(paste("got it! ",s_df[s_df$s_id == user_size,2]))
    
    ## drinks selection
    print("These are the drinks we currently offer")
    print(d_df)
    user_drink <- readline("What drink would you want?, please specify the drink id :")
    print(paste("got it! ",d_df[d_df$d_id == user_drink,2]))
    
    # total price
    total_price <- p_df[p_df$p_id == user_menu,3] + s_df[s_df$s_id == user_size,3] + d_df[d_df$d_id == user_drink,3]
    print(paste("The total price is ", total_price))
  }
}

chatbot()
