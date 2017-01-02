#! usr/bin/perl -w
use strict;

# Print out the maximum and minimum numbers in file numbers.txt.


my $file = "numbers.txt";
open(INPUT, $file) or die ("Input file $file not found\n");

my $line = 0;
# Initialise $min and $max to number on first line in file
my $min = $line;
my $max = $min;

while ($line = <INPUT>) {  # Loop through all numbers 
        if ($line < $min){
            $min = $line;            
        } elsif ($line > $max){
            $max = $line;
        }            
}

print "Mininum number: $min\n";
print "Maxinum number: $max\n";

close(INPUT);

