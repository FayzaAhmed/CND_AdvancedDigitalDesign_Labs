# Open the input file
set file [open "input.txt" r]

# Initialize an empty list to store table data
set table {}

# Read lines from the file and store them as lists in 'table'
while {[gets $file line] != -1} {
    # Remove leading and trailing whitespaces
    set line [string trim $line]

    # Skip the line with dashes
    if {[string match {-*} $line]} {
        continue
    }

    # Split the line based on multiple spaces
    set parts [regexp -all -inline {\S+} $line]
    lappend table $parts
}

# Close the file
close $file

# Print the table as a list of lists
puts "\nTable read from input.txt:"
foreach row $table {
    puts [join $row "\t"]
}
