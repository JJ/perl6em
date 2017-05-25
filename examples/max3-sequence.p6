#!/usr/bin/env perl6

use v6;

my @series =  (1..20).map( { rand } ) ;
my @series-prime = @series;
unshift @series-prime, 0;
pop @series-prime; # Creates shifted series
my @series-sec = @series-prime;
unshift @series-sec, 0;
pop @series-sec; # Creates the third shifted series
# We are looking for something like this
# 1 2 3 ...
# 0 1 2 ...
# 0 0 1 ...
# So that we can then add using Z all elements in the same position to obtain sum of three elements in a sequence

say [max] @series Z+ @series-prime Z+ @series-sec
