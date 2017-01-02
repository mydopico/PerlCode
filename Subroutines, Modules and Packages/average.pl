#! usr/bin/perl -w
use strict;

# Calculate the average of a list of numbers

my @list = (1,1,1,2,100);


sub average {
    
    
    my @file = @_;
    my $size = scalar(@_);
  
  # prevent divide by zero
   if (0 == $size) {
      die("Empty array\n");
   }
  
  my $sum = 0;
  foreach my $values (@_){
      $sum += $values;
  }
  
  my $average = $sum/$size;
  print "The average: $average\n";    

}

average(@list)

