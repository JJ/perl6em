#!/usr/bin/env perl6

use v6;

use Text::Markdown;
use JSON::Tiny;

sub MAIN( $dir = "txt/", $urls-file="urls-with-short.json" ) {
    my @files = $dir.IO.dir(:test(/ ".md" $/));
    my $references;

    print q:to/TEXT/;
# Links embedded in the "Learning to program with Perl 6"

| Text                        | Long URL          | Short URL      |
| --------------------------- | ----------------  | -------------- |
TEXT
    my $json = $urls-file.IO.slurp();
    my @urls = @(from-json $json);
    my %url-hash;
    for @urls -> $u {
	my $url = ($u<short> ~~ m!https:..(.+)! );
	say "| $u<text> | [`$u<long>`]($u<long>) | [`$url[0]`]($u<short>) | ";
    }
}
