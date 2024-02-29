set var "TCL,C,C++"

#$var(0)

set len [expr {[string length $var] - 1}]

set out_var ""

for {set i $len} {$i >= 0} {incr i -1} {
append out_var [string index $var $i]

}

puts "trivial out : $out_var\n" 

#intended op >> "++C,C,LCT"

#################################################
#PRINT >> "C++,C,TCL"

set str1 [string range $var 0 2]
set str2 [string range $var 4 4]
set str3 [string range $var 6 end ]

set var_string "$str3,$str2,$str1"

puts "3keeeeemmm approach : $var_string\n" 

#intended op >> "++C,C,LCT"

#################################################







