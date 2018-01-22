#!/usr/bin/env perl6

use v6;
use Text::Markdown;
sub MAIN( $dir = "txt/", $length = 60 ) {
    my @texts = $dir.IO.dir(:test(/ ".md" $/))
    ==> map( { .slurp } );
    for @texts -> $þ {
	my $markDOM = Text::Markdown::Document.new( $þ );
	for $markDOM.items ->
#    for $dir.IO.dir(:test(/ ".md" $/)) -> $f {
#	Text::Markdown::Document.new($f.slurp()).items
#	==> grep * ~~ Text::Markdown::CodeBlock
#	==> map( { .put } );
#	==> .text.split("\n")
#	==> grep $^ß.chars > $length
#	==> say "→ " ~ $^ł ~ "\n\t⇒ Has "~ $^ł.chars ~ " length\n";
	#    }
    }
}


