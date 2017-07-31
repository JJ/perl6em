#!/usr/bin/env perl6

use v6;

use Text::Markdown;
use JSON::Tiny;

sub MAIN( $dir = "txt/", $urls-file="urls-with-short.json" ) {
    my @files = $dir.IO.dir(:test(/ ".md" $/));
    my $references;

    my $json = $urls-file.IO.slurp();
    my @urls = @(from-json $json);
    my %url-hash;
    for @urls -> $u {
	%url-hash{$u{'long'}} = $u<short>;
    }
    for @files -> $f {
	say $f;
	my $text =$f.slurp();
	$text ~~ s:g/ \[ (<-[ \] ]> +?) \]  \( ( http <-[ ) ]> +? ) \) / $0 → %url-hash{$1} /;
	my ($basename) = ($f ~~ /(.+)\.md/);
	spurt $basename ~ "-links.md", $text;
    }
}
