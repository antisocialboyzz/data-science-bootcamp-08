outcome <- c("rock", "paper", "scissor")

win <- 0
lose <- 0
tie <- 0

rps_start <- function() {
  print("Welcome to the Rock, Paper, Scissors game! ")
  print("Keep in mind, you can stop anytime by saying 'quit'")
  start_game <- readline("Are you ready to start the game? [yes/no/quit]")
  if (start_game != "no" & start_game != "quit") {
    while (start_game != "no" & start_game != "quit") {
      player_choice <- readline("Pao Ying Chub!, Chub : ")
      opp_choice <- sample(outcome, 1)
      print(paste("player : ", player_choice))
      print(paste("opponent :", opp_choice))
      if (player_choice == "paper" & opp_choice == "rock") {
        print("you win!")
        win <- win + 1
      } else if (player_choice == "scissor" & opp_choice == "paper") {
        print("you win!")
        win <- win + 1
      } else if (player_choice == "paper" & opp_choice == "scissor") {
        print("you lose...")
        lose <- lose + 1
      } else if (player_choice == "paper" & opp_choice == "paper") {
        print("what a tie!")
        tie <- tie + 1
      } else if (player_choice == "rock" & opp_choice == "rock") {
        print("what a tie!")
        tie <- tie + 1
      } else if (player_choice == "scissor" & opp_choice == "scissor") {
        print("what a tie!")
        tie <- tie + 1
      } else if (player_choice == "scissor" & opp_choice == "rock") {
        print("you lose...")
        lose <- lose + 1
      } else if (player_choice == "rock" & opp_choice == "paper") {
        print("you lose...")
        lose <- lose + 1
      } else if (player_choice == "rock" & opp_choice == "scissor") {
        print("you win!")
        lose <- lose + 1
      } else {
          print("Thank you for playing")
          print("score:")
          print(paste("win: ", win))
          print(paste("lose: ", lose))
          print(paste("tie: ", tie))
          break
      }
    }
  } else {
      print("Thank you for playing")
      print("score:")
      print(paste("win: ", win))
      print(paste("lose: ", lose))
      print(paste("tie: ", tie))
  }  
}

rps_start()
