#! usr/bin/perl -w
use strict;

# Write a script that will calculate and print out the number of occurrences of each chain length in 
# numbers2.txt.
# print-out is in order of sequence length, starting with the longest sequence

my $file = "numbers2.txt";
open(INPUT, $file) or die ("Input file $file not found\n");

my @lengths = <INPUT>;
chomp(@lengths);
my %lengths;

foreach my $line (@lengths) {  # Add how many times a chain length was seen
	$lengths{$line} += 1; 
}

foreach my $line (sort {$b <=> $a} keys %lengths){ # Print in descendent order
	print "$line was seen $lengths{$line} times\n";
}