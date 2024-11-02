#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "TRUNCATE teams, games")

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
	if [[ $YEAR != 'year' ]]
	then
		### check and insert team to teams
		# get team_id
		TEAM_ID=$($PSQL "select team_id from teams where name = '$OPPONENT'")
		# if not found
		if [[ -z $TEAM_ID ]] 
		then
			INSERT_TEAM_RESULT=$($PSQL "insert into teams (name) values ('$OPPONENT');")
			if [[ $INSERT_TEAM_RESULT == 'INSERT 0 1' ]]
			then
				echo Insert team $OPPONENT to teams
			fi
		fi
		# get team_id
		TEAM_ID=$($PSQL "select team_id from teams where name = '$WINNER'")
		# if not found
		if [[ -z $TEAM_ID ]] 
		then
			INSERT_TEAM_RESULT=$($PSQL "insert into teams (name) values ('$WINNER');")
			if [[ $INSERT_TEAM_RESULT == 'INSERT 0 1' ]]
			then
				echo Insert team $WINNER to teams
			fi
		fi
		# === === ===
		# Insert game to games
		# get winner_id
		WINNER_ID=$($PSQL "select team_id from teams where name = '$WINNER';")
		# get opponent_id
		OPPONENT_ID=$($PSQL "select team_id from teams where name = '$OPPONENT';")
		# insert game
		INSERT_GAME_RESULT=$($PSQL "insert into games (year, round, winner_id, opponent_id, winner_goals, opponent_goals) values ($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS);")
		if [[ $INSERT_GAME_RESULT = 'INSERT 0 1' ]]
		then
			echo Insert game $ROUND -- $WINNER -- $OPPONENT
		fi
	fi
done

# check count teams
COUNT=$($PSQL "select count(team_id) from teams;")
echo -e "\n$COUNT teams\n\n"

# check count games
COUNT=$($PSQL "select count(game_id) from games;")
echo -e "\n$COUNT games\n"

