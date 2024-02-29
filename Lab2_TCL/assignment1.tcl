set number 123
set dec_number $number
set result ""
foreach {value symbol} {1000 M 900 CM 500 D 400 CD 100 C 90 XC 50 L 40 XL 10 X 9 IX 5 V 4 IV 3 III 2 II 1 I} {
	while {$number >= $value} {
		append result $symbol
		set number [expr $number - $value]		
	}
}

puts "Roman numeral for $dec_number is $result"
