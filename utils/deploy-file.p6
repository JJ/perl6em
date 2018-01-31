#!/usr/bin/env perl6

use v6;

use Text::Markdown;
use Text::Wrap;
use JSON::Tiny;

sub MAIN( $dir = "txt/", $urls-file="urls-with-short.json" ) {
    my @files = $dir.IO.dir(:test(/ ".md" $/));

    my $json = $urls-file.IO.slurp();
    die "Problems with JSON" if !$json;
    my @urls = @(from-json $json);
    my %url-hash;
    for @urls -> $u {
	%url-hash{$u{'long'}} = $u<short>;
    }
    for @files -> $f {
	next if $f ~~ /links/;
	say $f;
	my $text = $f.slurp();

	# Process URLs
	$text ~~ s:g/ \[ (<-[ \] ]> +?) \]  \( ( http <-[ ) ]> +? ) \) / $0 \[%url-hash{$1}\] /;

	# Process long lines
	my $md = Text::Markdown::Document.new($text);
	for $md.items -> $i {
	    if ( $i ~~ Text::Markdown::CodeBlock ) {
		my @lines = $i.text.split("\n");
		for @lines -> $l {
		    if ( $l.chars > 60 ) {
			#my $wrapped=wrap-text($l,:width(60),:postfix('\\'),:prefix("      "));
			my $wrapped=wrap-text($l,:width(60),:prefix("      "));
			$text .= subst(/$l/,$wrapped);
		    }
		}
	    }

	}
	my ($basename) = ($f ~~ /(.+)\.md/);
	spurt $basename[0] ~ "-deploy.md", $text;
    }
}
