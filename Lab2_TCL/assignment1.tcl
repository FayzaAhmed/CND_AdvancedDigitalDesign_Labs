# Set the decimal number to convert to Roman numerals
set number 123

# Store the decimal number in a separate variable
set dec_number $number

# Initialize an empty string to store the resulting Roman numeral
set result ""

# Iterate through each value-symbol pair for Roman numerals
foreach {value symbol} {1000 M 900 CM 500 D 400 CD 100 C 90 XC 50 L 40 XL 10 X 9 IX 5 V 4 IV 3 III 2 II 1 I} {
    # Repeat until the decimal number is greater than or equal to the current value
    while {$number >= $value} {
        # Append the symbol to the result
        append result $symbol
        # Subtract the value from the number
        set number [expr $number - $value]
    }
}

# Print the original decimal number and its corresponding Roman numeral
puts "Roman numeral for $dec_number is $result"
