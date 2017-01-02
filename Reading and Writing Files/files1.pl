#! usr/bin/perl -w
use strict;

# Print out a sorted list of any files having the extension .txt.

my @seqFiles = glob("*.txt");  # Grab files with extension .txt

# Print them sorted 
foreach my $file (sort @seqFiles) {
   print "$file\n"; 
}