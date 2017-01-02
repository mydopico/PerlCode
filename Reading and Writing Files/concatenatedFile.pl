#! usr/bin/perl -w
use strict;

# 2. Script that concatenates two files together to produce a third file. 
# The script take 3 command-line parameters — concatenatedFile.pl source1.txt source2.txt destination.txt

my @file =  "$ARGV[0]";
my @file1 = "$ARGV[1]";
my @file2 = "$ARGV[2]";

# Check that the script was called with the right number of arguments
unless (3 == scalar (@ARGV)) {
          die "$0 error\n";
        }
        
# Check the two first arguments are text files           
unless (-T $ARGV[0]) {
          print "it is not a text file\n"  ;
}   

unless (-T $ARGV[1]) {
          print "it is not a text file\n"  ;
} 

# Check that the destination file doesn't exists
unless (-e $ARGV[2]) {
          print "$0 the file does exists\n"  ;
}  

# Open the three files
open (INHD1, "<@file") 
          or die "Can't open file @file\n";
      
open (INHD2, "<@file1") 
          or die "Can't open file @file1\n";

open (OUTHD, ">@file2") 
          or die "Can't open file @file2\n";

# Read in and print out
print OUTHD <INHD1>,<INHD2>;   

# Close the filehandles     
close (INHD1);
close (INHD2);
close (OUTHD);
          

