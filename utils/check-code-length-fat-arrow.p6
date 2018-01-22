#!/usr/bin/env perl6

use v6;
use Text::Markdown;
sub MAIN( $dir = "txt/", $length = 60 ) {
    for $dir.IO.dir(:test(/ ".md" $/)) -> $f {
	my @code-blocks = Text::Markdown::Document.new($f.slurp())
	.items
	.grep( { $^þ ~~ Text::Markdown::CodeBlock } );

	for @code-blocks -> $i {
	    my @long-lines = $i.text.split("\n").grep( { .chars > $length }  );
	    say "‣$f → $_\n ⤷ is "~$_.chars~" long\n" for @long-lines;
	}
	
    }
}

