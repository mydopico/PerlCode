#! usr/bin/perl -w
use strict;

# Write lines of a file in another file
sub main {

   my $file = "profile.txt";
   open(INPUT, $file) or die ("Input file $file not found\n");
   
   my $output = 'output.txt';
   open(OUTPUT, '>'.$output) or die "Can't create output.\n";
   
   while (my $line = <INPUT>){
       if ($line =~ /programming/){
           print OUTPUT $line;
       }
   }
   close(INPUT);
   close(OUTPUT);

}
main()