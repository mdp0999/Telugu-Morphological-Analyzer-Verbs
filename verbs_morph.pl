#!/usr/bin/env perl
use strict;
use warnings;
use utf8;            #used for encoding and decoding purpose

my @words = ();      #assing the array of words and vocab_list
my @vocab_list = ();
my $infile = shift or die "please provide an input file name!\n";
open my $IN,"<encoding(utf8)",$infile or die "unable to open the input file $infile!\n";
my $outfile = shift or die "please provide an output file name!\n";
open my $OUT,">encoding(utf8)",$outfile or die "unable to open the output file $outfile!\n";
while (my $line = <$IN>) {                         #assign input data to each operation in loop and checks true or false 
if ($line  =~ /(\w+)చాడు$|(\w+)టాడు$|(\w+)చ్చాడు$|(\w+)నాడు$|(\w+)న్నాడు$|(\w+)తాడు$||(\w+)స్తాడు$/){   #pattern matching
print $OUT "$line\t\t  VB+T+3s.M\n\n";
}
if ($line  =~ /(\w+)చారు$|(\w+)టారు$|(\w+)చ్చారు$|(\w+)నారు$|(\w+)న్నారు$|(\w+)తారు$|(\w+)దురు$|(\w+)తిరు$|(\w+)స్తారు$/){   #pattern matching
print $OUT "$line\t\t  VB+T+3pl.M&F\n\n";
}
if ($line  =~ /(\w+)చావు$|(\w+)నావు$|(\w+)న్నావు$|(\w+)తావు$|(\w+)దువు$|(\w+)స్తావు$/){   #pattern matching
print $OUT "$line\t\t  VB+T+2s.M&F\n\n";
}
if ($line  =~ /(\w+)చాను$|(\w+)చ్చును$|(\w+)నాను$|(\w+)న్నాను$|(\w+)తాను$|(\w+)దును$|(\w+)స్తాను$/){   #pattern matching
print $OUT "$line\t\t  VB+T+1s.M&F\n\n";
}
if ($line  =~ /(\w+)టాము$|(\w+)న్నాము$|(\w+)తాము$|(\w+)దుము$|/) { #pattern matching
print $OUT "$line\t\t  VB+T+1pl.M&F\n\n";
}
if ($line  =~ /(\w+)టవి$|(\w+)నవి$|(\w+)న్నవి$|(\w+)న్నవి$|(\w+)తావి$|(\w+)తివి$|(\w+)స్తావి$/) { #pattern matching
print $OUT "$line\t\t  VB+T+3pl.M&F\n\n";
}
if ($line  =~ /(\w+)నది$|(\w+)న్నది$|(\w+)స్తుంది$|(\w+)తుంది$|(\w+)టుంది$|(\w+)యింది$|(\w+)న్నది$|(\w+)స్తుంది$/) { #pattern matching
print $OUT "$line\t\t  VB+T+3s.F\n\n";
}

if ($line  =~ /(\W+)ట$|(\W+)చు$|(\W+)యు$|(\w+)డం$|(\w+)టం$/&$line !~/(\w+)డ్డం$|(\w+)ష్టం$|ట్టం$/&$line !~/\bఖం(\w+)\b/){ #pattern matching
print $OUT "$line\t\t  Verb\n\n";
}
  
if ($line  =~ /(\w+)తిమి$/) { #pattern matching
print $OUT "$line\t\t  VB+T+2pl.M&F\n\n";
}
if ($line  =~ /(\w+)తిని$/) { #pattern matching
print $OUT "$line\t\t  VB+T+1pl.M&F\n\n";
}  
if ($line  =~ /(\w+)స్తాము$/) { #pattern matching
print $OUT "$line\t\t  VB+T+2pl.M&F\n\n";
}

}
close $IN;


