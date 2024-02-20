#!/bin/bash

# Variable declaration
name="John"
age=30
is_student=true
grades=(95 85 90 88)

# Print variable values
echo "Name: $name"
echo "Age: $age"
echo "Is student: $is_student"
echo "Grades: ${grades[@]}"

# Conditional statements
if [ $age -ge 18 ]; then
    echo "$name is an adult."
else
    echo "$name is a minor."
fi

# Looping (for loop)
echo "Printing grades:"
for grade in "${grades[@]}"; do
    echo "Grade: $grade"
done

# Looping (while loop)
counter=0
echo "Printing numbers from 1 to 5:"
while [ $counter -lt 5 ]; do
    ((counter++))
    echo "$counter"
done

# Function definition
get_sum() {
    local sum=0
    for num in "$@"; do
        ((sum += num))
    done
    echo "Sum: $sum"
}

# Function call
get_sum 10 20 30

# Reading user input
echo -n "Enter your favorite color: "
read favorite_color
echo "Your favorite color is: $favorite_color"

# Command substitution
current_date=$(date +"%Y-%m-%d")
echo "Current date: $current_date"

# File manipulation
file="example.txt"
echo "Hello, World!" > $file
echo "Contents of $file:"
cat $file
# rm $file

# Arithmetic operations
result=$((5 + 3 * 2))
echo "Result of arithmetic operation: $result"

# String manipulation
string="hello world"
echo "Uppercase: ${string^^}"
echo "Lowercase: ${string,,}"
echo "Length: ${#string}"
echo "Substring: ${string:6}"

# Array manipulation
colors=("red" "green" "blue")
echo "Number of colors: ${#colors[@]}"
echo "First color: ${colors[0]}"
echo "All colors: ${colors[@]}"

# Exit status
echo "Last command exit status: $?"

# File existence check
if [ -e "/etc/passwd" ]; then
    echo "File /etc/passwd exists."
else
    echo "File /etc/passwd does not exist."
fi

dd 