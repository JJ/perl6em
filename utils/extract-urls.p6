#!/usr/bin/env perl6

use v6;

use Text::Markdown;
use JSON::Tiny;

sub MAIN( $dir = "txt/" ) {
    my @files = $dir.IO.dir(:test(/ ".md" $/));
    my $references;
    for @files -> $f {
	my $text =$f.slurp();
	my $md = Text::Markdown::Document.new($text);
	for $md.items -> $i {
	    if ( $i ~~ Text::Markdown::Paragraph ) {
		for $i.items -> $l {
		    if ( $l ~~ Text::Markdown::Link ) {
			if ( $l.url ~~ /http/ ) {
			    push $references, { url => $l.url, text => $l.text };
			}
		    }
		}
	    }
	    if ( $i ~~ Text::Markdown::Link ) {
		if ( $i.url ~~ /http/ ) {
		    push $references, { url => $i.url, text => $i.text };
		}
	    }
		
	}
    }
    say to-json $references;
}

