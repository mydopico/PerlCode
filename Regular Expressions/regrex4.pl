#! usr/bin/perl -w
use strict;

#Print out the data in file taxonomy.txt with all "no rank" entries removed. 
#species|vent bacterium | no rank|sample | superkingdom|Bacteria ||
#would become
#species|vent bacterium | superkingdom|Bacteria ||

my $file = "taxonomy.txt";
open(INPUT, $file) or die ("Input file $file not found\n");


while (my $line = <INPUT>) {
   $line =~ s/\s*no\srank\|.+?\|//g;# regrex substitution to remove "no rank"
   print $line;
   }


close(INPUT);