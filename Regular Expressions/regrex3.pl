#! usr/bin/perl -w
use strict;

# Print out a list of the families in file taxonomy.txt in alphabetical order. 
# print out the name of each family only once.

my %families;
my $file = "taxonomy.txt";
open(INPUT, $file) or die ("Input file $file not found\n");


while (my $line = <INPUT>) {
   if ($line =~  /\bfamily\|(.+?)\|/){
       $families{$1. "\n"} = 1; # Add a newline to print each key in different line
   }
}

print sort keys %families;
close(INPUT);