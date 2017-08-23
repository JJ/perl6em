#!/usr/bin/env perl6

use v6;

use Text::Markdown;
use Text::Wrap;
use JSON::Tiny;

sub MAIN( $dir = "txt/" ) {
    my @files = $dir.IO.dir(:test(/ ".md" $/));
    my $references;
    for @files -> $f {
	my $text =$f.slurp();
	my $md = Text::Markdown::Document.new($text);
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

