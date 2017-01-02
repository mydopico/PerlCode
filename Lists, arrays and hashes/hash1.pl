#! usr/bin/perl -w
use strict;

# Write a script that will calculate and print out the number of occurrences of each chain length in 
# numbers2.txt.


my $file = "numbers2.txt";
open(INPUT, $file) or die ("Input file $file not found\n");

my %lengths; 
while (my $line = <INPUT>) {
   chomp $line;
   $lengths{$line}++; 
}

while (my ($key, $value) = each %lengths) {
   print "$key $value\n";
}

