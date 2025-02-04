#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=periodic_table -t -A -c"

# Check if argument is provided
if [[ -z $1 ]]
then
  echo "Please provide an element as an argument."
  exit 0
fi

# Fetch element data
RESULT=$($PSQL "
  SELECT elements.atomic_number, name, symbol, type, atomic_mass, melting_point_celsius, boiling_point_celsius
  FROM elements
  JOIN properties ON elements.atomic_number = properties.atomic_number
  JOIN types ON properties.type_id = types.type_id
  WHERE elements.atomic_number::TEXT = '$1' OR elements.symbol = '$1' OR elements.name = '$1'
")

# If no result
if [[ -z $RESULT ]]
then
  echo "I could not find that element in the database."
  exit 0
fi

# Parse result and ensure correct output formatting
echo "$RESULT" | while IFS="|" read -r ATOMIC_NUMBER NAME SYMBOL TYPE MASS MELTING BOILING
do
  echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELTING celsius and a boiling point of $BOILING celsius."
done
