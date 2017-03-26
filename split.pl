#!/usr/bin/env perl
use strict;
use warnings;
#declaring var i and arrays
my $i = 0;    
my @words = ();
my @vocab_list = ();
my $infile = shift or die "please provide an input file name!\n";
open my $IN,"<encoding(utf8)",$infile or die "unable to open the input file $infile!\n";
my $outfile = shift or die "please provide an output file name!\n";
open my $OUT,">encoding(utf8)",$outfile or die "unable to open the output file $outfile!\n";
while (my $line = <$IN>) {
	chomp $line;
	next if ($line =~ /^\s*$/);#tokonization
		for($line){
		s/<\/?.+?>//g;
		s/\'(.+?)\'/$1/g;
		s/[!.,::?()"\/]//g;
		s/\s~\s//g;
                s/[a-z\/]//g;#deleting small alphabets
                s/[A-Z\/]//g;#deleting caps
                s/[0-9\/]//g;#deleting numeric data
                s/^\s*//;
		s/\s+$//;
		s/\'//;
}
my @element = split/\s+/,$line;#spliting
push @words,@element;
}
close $IN;
@words = sort @words; #sorting
foreach my $words (@words) {
	print $words,"\n";
}
my $array_length = scalar @words;#ascending sorted words
for ($i=0;$i<$array_length;$i++) {
	($a,$b) = ($words[$i],$words[$i+1]);
	if ($a ne $b) {
		push @vocab_list,$a;
	}
}
print "\n\nvocab:\n\n"; #print the each word based on above operations
foreach my $words (@vocab_list) {
	print $OUT $words,"\n";
}
