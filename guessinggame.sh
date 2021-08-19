# File guessinggame.sh
# Assignment of Unix Workbench Coursera course by Jan Huijs
function dirfiles {
  echo $( ls -1A | wc -l )
}
nrf=$(dirfiles)
guess=-1
echo -n "Guess the number of files in this directory: "
while [[ $guess -ne $nrf ]]
do
  read guess
  if [[ ! $guess =~ ^[0-9]+$ ]]
  then
    echo -n "That's not a valid number, enter new guess: "
    guess=-1
  else
    if [[ $guess -lt $nrf ]]
    then 
      echo -n "Your guess" $guess "is too low, enter new guess: "
    elif [[ $guess -gt $nrf ]]
    then
      echo -n "Your guess" $guess "is too high, enter new guess: "
    fi
  fi
done
echo "Congratulations, indeed there are" $guess "files in this directory!"

