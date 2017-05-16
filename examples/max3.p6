#!/usr/bin/env perl6

my @series =  (1..20).map( { rand } ) ; # Hack to make them all have the same range

say [max] @series X+ @series X+ @series
