#! usr/bin/perl -w
use strict;

#Subroutine to check whether a file exists

sub main {
    
    my $file='/home/yolanda/file1.txt';
    
    if (-f $file){
        print "Found file\n"
    } else {
        print "File not found\n"
    }
}

main()