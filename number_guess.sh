#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "Enter your username:"
read USERNAME
PLAYER_ID=$($PSQL"SELECT player_id FROM players WHERE name='$USERNAME'")
if [[ -z $PLAYER_ID ]]
then
  INSERT_PLAYER_RESULT=$($PSQL"INSERT INTO players(name,games_played) VALUES('$USERNAME',0)")
  PLAYER_ID=$($PSQL"SELECT player_id FROM players WHERE name='$USERNAME'")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  GAMES_PLAYED=$($PSQL"SELECT games_played from players WHERE player_id=$PLAYER_ID")
  BEST_GAME=$($PSQL"SELECT MIN(attempts) FROM games WHERE player_id=$PLAYER_ID")
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi
RANDOM_NUMBER=$((1 + RANDOM % 1000))
COUNT=0
FINAL_GUESS=0
echo -e "\nGuess the secret number between 1 and 1000:"
while [[ $RANDOM_NUMBER != $GUESS ]];
do
  read GUESS
  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
  else
    if [[ $RANDOM_NUMBER -eq $GUESS ]]
    then
      COUNT=$((COUNT+1))
      FINAL_GUESS=$GUESS
      break
    fi
    if [[ $RANDOM_NUMBER -gt $GUESS ]]
    then
      echo "It's higher than that, guess again:"
    else 
      echo "It's lower than that, guess again:"
    fi

    COUNT=$((COUNT+1))
  fi
done
INSERT_GAME_RESULT=$($PSQL"INSERT INTO games(attempts,player_id) VALUES($COUNT,$PLAYER_ID)")
UPDATE_PLAYER_RESULT=$($PSQL"UPDATE players SET games_played=games_played+1")
echo "You guessed it in $COUNT tries. The secret number was $RANDOM_NUMBER. Nice job!"
 



 
