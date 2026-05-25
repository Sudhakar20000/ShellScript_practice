#!/bin/bash
echo "What is your name:"
read name
echo "what is your age:"
read age
total=$((60-$age))

echo "My name is $name, I am $age years old and I live in Hyderabad.
Years until 60: $total"