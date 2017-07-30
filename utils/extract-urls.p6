#!/usr/bin/env perl6

use v6;

use Text::Markdown;

sub MAIN( $dir = "txt/" ) {
    my @files = $dir.IO.dir(:test(/ ".md" $/));
    my @references;
    for @files -> $f {
	my $text =$f.slurp();
	my $md = Text::Markdown::Document.new($text);
	for $md.items -> $i {
	    if ( $i ~~ Text::Markdown::Paragraph ) {
		for $i.items -> $l {
		    if ( $l ~~ Text::Markdown::Link ) {
			push @references, $l.url;
		    }
		}
	    }
		
	}
    }
    dd @references;
}

