#! usr/bin/perl -w
package  MySeq;
use strict;

# Module containing two subroutines

# Subroutine: ExtractSeq() 
# Purpose: extract amino-acid sequence from beta-turn prediction file 
# Input parameter: name of beta-turn prediction file  
# Returns: string containing extracted amino-acid sequence

sub ExtractSeq {

   my $file  = $_[0];
   open FH , "<$file" || die "cannot open $file" ;
   my $sequence = "";
  
   while ( my $line = <FH>) {
    
            if ($line =~ /\s*\d+\s([A-Z].*)\s*/g ) {
               $sequence .= $1;
        }
   }
   return $sequence;
   close FH;
}

# Subroutine: AminoAcidCounts() 
# Purpose: calculate number of each amino-acid type in a sequence 
# Input parameter: string containing amino-acid sequence  
# Returns: counts of each amino-acid type with single letter codes


sub AminoAcidCounts {

      my ($string) = @_;
 
  
  my %hash ;
  
  $hash{$_} = 0  for ( split // , 'ACDEFGHIKLMNPQRSTVWY');
 
  while ($string =~/(\w)/g) { $hash{uc $1}++ }
 
  foreach my $aa (sort {$a cmp $b} keys %hash){
      print "\n$aa = $hash{$aa}"
  }  
}

1;
 