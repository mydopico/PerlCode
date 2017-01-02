#! usr/bin/perl -w
use strict;

# Prints out the names of any species in file taxonomy.txt.

my $file = "taxonomy.txt";
open(INPUT, $file) or die ("Input file $file not found\n");


while (my $line = <INPUT>) {
   if ($line =~  /\bspecies\|(.+?)\|/){
      print $1, "\n";
   }
}


close(INPUT);