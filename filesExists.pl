#! usr/bin/perl -w
use strict;

#Subroutine to check whether a number of files exist

sub main {
    
    my @files = (
    '/home/yolanda/file1.txt',
    '/home/yolanda/file2.txt',
    '/home/yolanda/file6.txt',
    );
    
    foreach my $file (@files){
        if (-f $file){
            print "Found: $file\n"
        } else {
            print "Not found: $file\n"
        }        
    } 
    
}
main ()
