#! usr/bin/perl -w
use strict;

# Extract the amino-acid sequence from sequence3.txt. 
# The script take two command-line parameters: sequence3.txt extracted.txt

my $file = "sequence3.txt";
my $file1 = "extracted.txt";

# Create input and output filehandles 
open (INHD, "<$file") 
          or die "Can't open file $file\n"; 
      
open (OUTHD, ">$file1") 
          or die "Can't open file $file1\n";
          
# Extract the sequence
my $sequence = "";
while (my $line = <INHD>) {
	if ($line =~ /\s+\d+\s([A-Z].*)/g ){ 
		$sequence .= $1;
	}
}

print OUTHD "$sequence\n"; # Print out sequence and close filehandles  
close (INHD);
close (OUTHD);