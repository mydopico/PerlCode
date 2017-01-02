#! usr/bin/perl -w
use strict;
use MySeq;

# Script that uses the two subroutines of MySeq package (ExtractSeq() and AminoAcidCounts()) to print out the 
# amino-acid sequence and percentage of residues 

my $file = "sequence3.txt";
my $aa_seq = MySeq::ExtractSeq($file); # Calling first subroutine
print "$aa_seq\n";
MySeq::AminoAcidCounts($aa_seq);  # Calling second subroutine