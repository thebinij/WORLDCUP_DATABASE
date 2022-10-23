#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
while IFS="," read -r year round winner opponent winner_goals opponent_goals
do
  echo "$($PSQL "INSERT INTO teams (name) VALUES ('$opponent'),('$winner') ON CONFLICT DO NOTHING")"
  OPPONENT_ID="$($PSQL "SELECT team_id FROM teams WHERE name = '$opponent'")"
  WINNER_ID="$($PSQL "SELECT team_id FROM teams WHERE name = '$winner'")"
  echo "$($PSQL "INSERT INTO games (year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES ($year,'$round',$WINNER_ID,$OPPONENT_ID,$winner_goals,$opponent_goals)")"
done < <(tail -n +2 games.csv)