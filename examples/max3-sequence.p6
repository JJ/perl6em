#!/usr/bin/env perl6

my @series =  (1..20).map( { rand } ) ;
my @series-prime = @series;
unshift @series-prime, 0;
pop @series-prime;
my @series-sec = @series-prime;
unshift @series-sec, 0;
pop @series-sec;

say [max] @series Z+ @series-prime Z+ @series-sec
