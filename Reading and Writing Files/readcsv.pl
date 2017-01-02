#! usr/bin/perl -w
use strict;

# Split and read csv files

use Data::Dumper;

sub main {
	
	my $input = 'sample.csv';
	
	unless(open(INPUT, $input)) {
		die "\nCannot open $input\n";
	}
	
	<INPUT>;
	
	while(my $line = <INPUT>) {
		
		my @values = split ',', $line;
				#print join '|', @values;
				print Dumper(@values);
	}
	
	close INPUT;
}

main();