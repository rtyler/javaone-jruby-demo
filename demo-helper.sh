#!/bin/sh

echo "Copy asciitable?"
read N
cat ./ascii-table-from-jar.rb | xclip -i 
echo "Copy anonymous classes?"
read N
cat ./anonymous-classes.rb | xclip -i
echo "Copy turtler?"
read N
cat ./turtles/turtler.rb | xclip -i
echo "========"

