#! usr/bin/perl -w
use strict;
use MySeq;

# Uses the first subroutine of MySeq package (ExtractSeq() to extract the amino-acid sequence 

my $file = "sequence3.txt";
my $aa_seq = MySeq::ExtractSeq($file); # Calling first subroutine that returns extracted amino-acid sequence


# Calculate the percentage of amino-acids in a sequence.

sub AminoAcidPercentage {

  my ($string) = @_; # Input: string containing amino-acid sequence extracted with MySeq::ExtractSeq()
  
  my %hash ;
  
  $hash{$_} = 0  for ( split // , 'ACDEFGHIKLMNPQRSTVWY');
 
  while ($string =~/(\w)/g) { $hash{uc $1}++ }
  
  my $length = length($string);
  
  foreach my $aa (sort {$a cmp $b} keys %hash){
      print "\n", "percentage of $aa =:",($hash{$aa}/$length* 100), "\%";
  }  # Returns: percentage of each amino-acid type with single letter codes sorted
}

AminoAcidPercentage($aa_seq);

