#! usr/bin/perl -w
use strict;

# Read the PDB chain lenghts in, sort them in descending numerical order and print them out, 
#followed by the average chain length

my $file = "numbers2.txt";
open(INPUT, $file) or die ("Input file $file not found\n");

my @array = <INPUT>;
my @pdb = sort { $b <=> $a } @array;

my $total = 0;
foreach my $item (@array) {
    $total += $item;    
}
my $average = $total / scalar @array;
push @pdb, $average;

print @pdb;

