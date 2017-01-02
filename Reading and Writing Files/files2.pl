#! usr/bin/perl -w
use strict;

# Script that reads in names from any files having a .names extension.
# Print out a list of the names from the files and sorted in reverse alphabetical
# order and contain no duplicates.


my $dir = ".";

# Grab filenames              
my @namesFiles = glob("*.names");              

my %namesHash; 
# Read in all the names             
foreach my $file (@namesFiles) {
	               open (FH, $file) or die "Can't open\n";
	                  while (my $file = <FH>) {
	                     if ($file =~ /^\s*(\w.*?)\s*$/) {
# Capture the names inside the file with a regrex
# Store names as a keys of a hash, bcs they're unique
	                        $namesHash{$1 . "\n"} = 1;
	                      }
	                      
                          }
}
# Print out list in reverse alphabetical order
print sort {($b) cmp ($a)} keys %namesHash;