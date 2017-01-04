#!/usr/bin/env perl6

#use as
#    history | awk '{print $2;}' | perl6 history.p6

my %commands;

for lines() {
    %commands{$_}++;
}

for %commands.keys.sort: { %commands{$^b} <=> %commands{$^a}} -> $key  {
    say "$key => %commands{$key}" if  %commands{$key} > 1;
}
