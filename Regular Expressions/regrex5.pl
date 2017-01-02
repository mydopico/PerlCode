#! usr/bin/perl -w
use strict;

# Calculate the length of the amino-acid sequence in file sequence3.txt.

my $file = "sequence3.txt";
open(INPUT, $file) or die ("Input file $file not found\n");
my $seq = "";

while (my $line = <INPUT>) {
  if ($line =~ /\d+\s+([A-Z]+)/){ # Get the line starting with a number
      $seq .= $1; # Add the amino-acid sequence to variable $seq
  }
}


print length $seq, "\n";
close(INPUT);

