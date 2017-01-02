#! usr/bin/perl -w
use strict;

# Prints out the names of any subspecies in file taxonomy.txt.(i.e Trypanosoma brucei brucei)

my $file = "taxonomy.txt";
open(INPUT, $file) or die ("Input file $file not found\n");


while (my $line = <INPUT>) {
   if ($line =~ /subspecies\|(.+?)\|/){
      print $1, "\n";
   }
}


close(INPUT);