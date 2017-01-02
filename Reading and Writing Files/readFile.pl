#! usr/bin/perl -w
use strict;

# Read a file

sub main {
    my $file = "profile.txt";
    
    open(INPUT, $file) or die ("Input file $file not found\n");
    
    while (my $line = <INPUT>){
        print "$line";
    }
    
    close(INPUT);
}

main()