#!/usr/bin/env perl6

use v6;
use Text::Markdown;
sub MAIN( $dir = "txt/" ) {
    for $dir.IO.dir(:test(/ ".md" $/)) -> $f {
	my $md = Text::Markdown::Document.new($f.slurp());
	for $md.items -> $i {
	    if ( $i ~~ Text::Markdown::CodeBlock ) {
		my @lines = $i.text.split("\n");
		for @lines -> $l {
		    if ( $l.chars > 60 ) {
			say "→ $l\n→→Has "~$l.chars~" length";
		    }
		}
	    }
		
	}
    }
}

