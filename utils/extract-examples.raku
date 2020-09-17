#!/usr/bin/env raku

my $file = @*ARGS[0] // "perl6.org";

my $content = $file.IO.slurp;

my $blocks = $content ~~ m:g/"#+BEGIN_EXAMPLE" \s+ \w+
                            (.+?)
                            "#+END_EXAMPLE"/;

for $blocks.list -> $block {
    say "# Example\n$block[0]";
}
