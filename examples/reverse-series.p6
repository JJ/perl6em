#!/usr/bin/env perl6

my $reverse-series = {  my $series = 1..$_;
			reverse  $series; }
say $reverse-series(< 1 2 3 4>)
