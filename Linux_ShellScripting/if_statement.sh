#!/bin/bash
value=15

if [ $value -lt 10 ]; then
  echo "Value is less than 10"
elif [ $value -eq 10 ]; then
  echo "Value is exactly 10"
#elif [ $value -lt 20 ]; then
#  echo "Value is between 11 and 19"
elif (($value > 10)); then
echo "value is greater than 10"
else
  echo "Value is 20 or more"
fi

