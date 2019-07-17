#!/usr/bin/perl
# program to count upregulated and downregulated samples 
# Hidemasa Bono <bonohu@gmail.com>

die "usage: $0 threshold\n" if(@ARGV == 0);
	
my $j = 0;
my $thre = shift(@ARGV);
my $upthre = $thre;
my $dnthre = 1/$thre;

#counting number of columns
$_ = <STDIN>;
chomp;
my $columns = split(/\t/);
my $pairs = ($columns -1) / 2;

#print header
print "Gene\tup\tdown\tunchanged\tdiff\n";

while(<STDIN>) {
	chomp;
	my $up = 0;
	my $down = 0;
	my $unch = 0;
	my ($id, @words) = split(/\t/);
	foreach my $i (1..$pairs) {
		my $hval = shift(@words);
		my $nval = shift(@words);
		$diffval = ($hval + 1) / ($nval + 1); 
		if($diffval >= $upthre) {
			$up++;
		} elsif($diffval <= $dnthre) {
			$down++;
		} else {
			$unch++;
		}
	}
	my $diff = $up - $down;
	print "$id\t$up\t$down\t$unch\t$diff\n";
}
