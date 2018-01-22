#!/usr/bin/env perl6

# Flag codeblocks with length bigger than a particular number
use v6;
use Text::Markdown;
sub MAIN( $dir = "txt/", $length = 60 ) {
    for $dir.IO.dir(:test(/ ".md" $/)) -> $f {
	my @items =  Text::Markdown::Document.new($f.slurp()).items;
	say ( @items 
	      ==> grep( { $^þ ~~ Text::Markdown::CodeBlock } )
	      ==> map( { .text.split("\n") } )
	      ==> flat()
	      ==> grep( { .chars > $length }  )
	      ==> map( { "‣$f → $_\n ⤷ is "~$_.chars~" characters long" } )
	      ==> join( "\n" xx 2 ) );	
    }
}

