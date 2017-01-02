#! usr/bin/perl -w
use strict;

#Count the entries in file taxonomy.txt belonging to superkingdoms Archaea and Bacteria.

my $count = 0;

my $file = "taxonomy.txt";
open(INPUT, $file) or die ("Input file $file not found\n");


while (my $line = <INPUT>) {
   if ($line =~ /\bsuperkingdom\|(Archaea|Bacteria)/) {
      $count++;
   }
}

print $count, "\n";
close(INPUT);