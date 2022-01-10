#!/bin/bash
# Author: Rhytham Shiroya <rshiroya@uncc.edu>
# Description: The script uses the case statement to 
# check if a character is upper or lower case, and if it is numeric or otherwise.
echo "Hit a key, then hit return."
read keypress
case "$keypress" in
  [[:lower:]] )
    echo "Lowercase letter"
    ;;
  [[:upper:]] )
    echo "Uppercase letter"
    ;;
  [0-9] )
    echo "Digit"
    ;;
  [. | , | ? | ! | “;” | : | “’” | “(“ | “)”] )
    echo "Punctuation"
    ;; 
  * )
    echo "Punctuation, whitespace, or other"
    ;;
esac
