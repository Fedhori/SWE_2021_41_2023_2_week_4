#!/bin/bash

uppercase=("A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O" "P" "Q" "R" "S" "T" "U" "V" "W" "X" "Y" "Z")
lowercase=("a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z")

for file in files/*.txt; do
    filename=$(basename -- "$file")
    for i in {0..25}; do
        if [ "${filename:0:1}" = ${uppercase[i]} ] || [ "${filename:0:1}" = ${lowercase[i]} ]; then
            mv $file ${lowercase[i]}
        fi
    done 
done