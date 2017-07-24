#!/usr/bin/perl
# program to count upregulated and downregulated samples 

my $j = 0;
#my $thre = 0.585;
my $upthre = 1.5;
my $dnthre = 1/1.5;

#counting number of columns
$_ = <STDIN>;
chomp;
my $columns = split(/\t/);
my $pairs = $columns - 1;

#print header
print "Gene\tENSG\tup\tdown\tunchanged\n";

while(<STDIN>) {
	chomp;
	my $up = 0;
	my $down = 0;
	my $unch = 0;
	my ($id, @words) = split(/\t/);
	foreach my $i (1..$pairs) {
		my $diffval = pop(@words);
		if($diffval >= $upthre) {
			$up++;
		} elsif($diffval <= $dnthre) {
			$down++;
		} else {
			$unch++;
		}
	}
	print "$id\t$up\t$down\t$unch\n";
}
