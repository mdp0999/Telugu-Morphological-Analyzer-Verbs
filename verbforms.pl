#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
my $base = "";  
my $base1 = "";  
my $base2 = "";  
my $base3 = "";  
my $base4 = "";  
my $base5 = "";
my $base6 = "";  
my $base7 = "";  
my $base8 = "";  
my $base9 = "";  
my $base10 = "";  
my $base11 = ""; 
my $base12 = "";  
my $base13 = "";  
my $base14 = "";  
my $base15 = "";  
my $base16 = "";  
my $base17 = "";    
my @words = ();
my @vocab_list = ();
my $infile = shift or die "please provide an input file name!\n";
open my $IN,"<encoding(utf8)",$infile or die "unable to open the input file $infile!\n";
my $outfile = shift or die "please provide an output file name!\n";
open my $OUT,">encoding(utf8)",$outfile or die "unable to open the output file $outfile!\n";
while (my $line = <$IN>) {
if ($line  =~ /(\w+)న్నారు$/){
my $root = substr$line,0,-7;
$base = $root."";
my $root1 = substr$line,0,-3;
$base1 = $root1."ను";
my $root2 = substr$line,0,-3;
$base2 = $root2."వు";
my $root3 = substr$line,0,-3;
$base3 = $root3."రు";
my $root4 = substr$line,0,-3;
$base4 = $root4."ది";
my $root5 = substr$line,0,-3;
$base5 = $root5."డు";
print $OUT "$line\t\t $root\t\t $root1\t\t $base1\t\t $base2\t\t $base3\t\t $base4\t\t $base5\n\n";
}
if ($line  =~ /(\w+)ంది$/&$line !~/\bఅంతమంది\b/){ 
my $root6 = substr$line,0,-4;
$base6 = $root6."న్నా";
my $root7 = substr$base6,0,-4;
$base7 = $root7."న్నాను";
my $root8 = substr$base6,0,-4;
$base8 = $root8."న్నావు";
my $root9 = substr$base6,0,-4;
$base9 = $root9."న్నారు";
my $root10 = substr$base6,0,-4;
$base10 = $root10."న్నాది";
my $root11 = substr$base6,0,-4;
$base11 = $root11."న్నాడు";
print $OUT "$line\t\t $root6\t\t $base6\t\t $base7\t\t $base8\t\t $base9\t\t $base10\t\t $base11\n\n";
}
if ($line  =~ /(\w+)యి$/&$line !~/\bకుక్కలోస్తాన్నాయి\b|\bగొయ్యి\b/){
my $root12 = substr$line,0,-4;
$base12 = $root12."";
my $root13 = substr$line,0,-3;
$base13 = $root13."ను";
my $root14 = substr$line,0,-3;
$base14 = $root14."వు";
my $root15 = substr$line,0,-3;
$base15 = $root15."రు";
my $root16 = substr$line,0,-3;
$base16 = $root16."ది";
my $root17 = substr$line,0,-3;
$base17 = $root17."డు";
print $OUT "$line\t\t $root12\t\t $root13\t\t $base13\t\t $base14\t\t $base15\t\t $base16\t\t $base17\n\n";
}
}
close $IN;
