#!/usr/bin/env perl6

use v6;
use Text::Markdown;
sub MAIN( $dir = "txt/", $length = 60 ) {
    for $dir.IO.dir(:test(/ ".md" $/)) -> $f {
	Text::Markdown::Document.new($f.slurp())
	==> grep $^þ ~~ Text::Markdown::CodeBlock
	==> .text.split("\n")
	==> grep $^ß.chars > $length
	==> say "→ " ~ $^ł ~ "\n\t⇒ Has "~ $^ł.chars ~ " length\n";
    }
}


