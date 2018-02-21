# Introduction

This book is about learning programming using a promising, and almost
completely new, language: Perl 6. But it is only Perl 6 specific in
a minority of the content. Most chapters that deal with Perl 6 could
be rewritten using any other language, preferably a new, cool language
such as Go or Rust. I, or someone, might do that some day. But for the
time being, let us be content with the Perl 6 content. Which is also
new and cool.

You can [check out the GitHub repository for this book](https://github.com/JJ/perl6em). It
will also contain evolving versions of new chapters and volumes. 


# Principles

A few principles that inspire this (book|booklet|manual|you name it),
originally conceived to help non-programmers get into Perl 6.


## Learning should be fun and engaging: learn by doing.

The best way to make people actually learn something is by putting
immediately to practice whatever is being learned, be it programming
or weaving. So you should have your computer handy and learn the tools
as soon as possible by typing, better than cutting and pasting, the
examples written here. Typing helps you reflect about what you are
doing, avoid *cargo-culting*, and also introducing innovations by
making maybe little changes to save keystrokes and see what happens. 


## You are the master of your learning process, and tools, and outcome.

You should learn at your own step, stopping whenever you want and
actually taking lessons when you feel like doing it. Engagement will
ensue. 


## Learning never stops.

If you learn only during the short period where *class*, or reading
the book, is taking
place, you will not learn too much. You have to digest and assimilate
and come up with new ideas anytime and anywhere. Some of them will be relevant to whatever
you are learning, some of them will be revealed as relevant later on,
some of them will be simply discarded. But you can leverage whatever
experience you have to enhance what you are learning, even more so if
it is a programming language. 

## Learning is a two-way process. There is no professor, no student: learning happens ideally in a community.

This is kinda *zen*, but then the whole thing stinks of a holistic
experience, where you learn about life by learning about programming
and back. That also means that learning comes from every direction at
once: the other students, maybe whoever is preparing objectives and
material for the day, but that person will also learn new things about
him or herself and about whatever is teaching, because the best way to
learn is to prepare something to be taught to others. 

Besides, there is no learning outside self-learning. But maybe that is
a completely different story. 


# Motivation

This is (mostly) a book on Perl 6. But my initial intention was not to
show how to program in Perl 6. Here are a few of my actual motivations, which
might also be your own for actually reading and following this book. 


## Teaching programming to (almost) non-programmers.

Most programming books seem to be written either for people that already know
how to program or for people that barely knows how to press
keys. There must be a middle ground, and I try to tread it with this
book. If you know how to use a computer, you should be ready to go the
whole nine yards and learn to create things in Perl 6 by the end of
the book, if that eventually happens. 

## Contemplate the possibilities of Perl 6 as a beginner's language.

There seems to be a consensus that there is such a thing as a *good
language for beginners*, and that that language is Python. Well, maybe
it is, but why would any other languages, Rust, JavaScript or even C++
be worse? Asking about the best programming language for beginners is
like asking about the best foreign language for beginners. Evidently,
the best is the language you want to learn. If you want to learn
Chinese, you do not learn first whatever language is closer to
yours and easier than Chinese (maybe Vietnamese? No idea, really, I
got trapped in the metaphor). You learn Chinese and are done with it. 

Point is, when you want to learn to program you usually have some kind
of job or task in mind. The best language to learn programming is a
language that can do that job. 

And Perl 6 can be that language.


## Show the beauty and craft of programming.

"Good technically, but lacks passion" is probably one of the worst
things that can be said about a musician or even a footballer. That should
be the case also for programmers. Those focused on getting the job
well done  *technically* will probably lack the will, or the stamina,
to learn new things or to completely switch the language or the
toolbelt you are using. Along with programming, you have to make
students learn the craft and also the beauty of a minimalist, fast
and crafty program. 


## Make learn by doing

Which boils down to "talk little, do a lot". No slides, no heavyweight
course materials, just a screen with examples, and make people perform
short tasks and reproduce what is being said by themselves. Hands have
better memory than eyes. Use that. 

In this book, in most cases activities will have a particular purpose
and will follow or flow from one chapter, or asides, to the next
ones, so that you will end up building one, or several, scripts
or programs or even notes that will be useful by themselves. 



# The tools of the trade

Programming is learned by programming; but in order to actually make
the programs work and do something you have to use programs that are
run from operating systems command lines and user interfaces, in fact
*prototyping*; looking at it from another angle, you are trying to solve a problem for a target 
audience, yourself, by choosing the right tools. In this phase you
will find that there is no perfect tool for doing everything.

> Although the combination Linux + Emacs comes pretty close 

Let's start with the operating system. That would be Linux. Whew, that
was short. Although nowadays Linux is everywhere and you can have a
Linux command line in Windows 10, and of course also in the Macs, it
might still be better to do the real thing and install Linux, even if
it is booting from a partition or a virtual machine. 
But let's proceed to that thing that actually allows users to run programs, the *shell*. 


<a id="orgf0ec3f4"></a>

## Shells

The command line interpreter is also called *shell*. This might seem
like a given and used the way it's unwrapped from the box, but
in fact different command line interpreters have different
capabilities. In fact, even
the [humble bash](https://www.gnu.org/software/bash/) which is the
default in most Linux distributions has
interesting capabilities you can use. 

Main thing you want to tap is
the possibility of displaying relevant information in the command
line, such as the directory you are working on or, later on, the
branch of the repository you are in, where a repository is used to
store and work in different versions of a program. And, in that sense, 
there are quite a few choices to do that easily, but the main
thing about them is the possibility of *theming* them, that is,
choosing a set of settings that allow, mostly, to find the information we mention
above by just selecting a *theme*. 

In that sense [zsh](http://zsh.sourceforge.net/) and [fish](https://fishshell.com/) are very
strong contenders, they are easily themable and come out of the box
with other capabilities for moving from one directory to another or
completing commands and command arguments. Install them the usual way,
that is, `sudo apt install`, `brew install` or the equivalent in other
operating systems or distributions, and then select a theme
that goes easily with your programming habits;
[Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh) for `zsh`
or [bash-it](https://github.com/Bash-it/bash-it) for `bash`are good
places to start. 


Play a bit with the themes or options until you find one with all the
colors and contrast you want. And then come back here for the...

## editors.

The choice of an editor goes beyond mere utility to become part of the 
identity of the developer, a side to stand when the flame war starts. As above, the
motto is always *suit yourself*, but since we are in the realm of
Perl6, I would propose [Atom](http://atom.io) as the editor to use. It is a modern
editor, it has got a good and evolving support for Perl 6, and it is
free software.  [Perl6 scripts look positively pretty](https://github.com/perl6/atom-language-perl6#how-do-i-use-this) with the Atom Perl 6
support, and they include goodies such as completing variable names
and that kind of things. 

However, it is not the only one out there. Good old Emacs goes a bit further providing
an environment where you can work with all kind of Unicode characters,
run the REPL and complete variables if you so like. Mind you, you can
probably do that with Atom too. But Emacs has been my editor for as
long as I remember, so I thought I should just plug it in. 

You can also run chunks of code in Atom with the
[script plugin installed](https://atom.io/packages/script). However, for the time being we are going to
focus on expressions, and these will not print anything except from
the REPL. You can keep it for later if you so wish. 

Not that the traditional Vi/Vim or the new VSCode are not good choices
too, but Atom is easier to use and is improving in speed and
support by the minute, although you might find both these faster than
Atom. Besides, it has got everything it takes for 
professional editor: syntax highlighting, being able to do some checks
from the editor itself, and allow running and debugging. It has got
all that, so that will be it. 

To go with the editor, you need some relatively fast way of inputting
some characters such as ☬ or Щ. I have used the application "Character
Map" that comes with Ubuntu; after finding a character by the name of
the alphabet, you can go to Character Details and copy/paste it to
wherever you want it used. You can also click twice and the character
will appear in the "Text to copy" slot. 

![Character map for Unicode](./img/charmap.png)

However, if you are an old-timer getting into new languages, Emacs
offers a straighforward way to enter all kind of Unicode
characters. Control-x, 8, then press enter, and you can enter the name
of the character, or press `Tab` and open a buffer with all of
them. Search for it (Control-s) and then click on the name of the
character and it will be inserted into the buffer. If you use one
repeatedly, you will end up learning the name, or just create a macro
that will key it for you.


The
[mode that supports perl6, by Tom Browder, is a great thing](https://github.com/perl6/perl6-mode),
although it could use a few improvements. Besides, there is a plus
in Emacs: the integrated shell
that allows you to work easily with code alongside REPL. The above
mentioned facility to work with Unicode characters is also a nice
thing; they are not necessary for
Perl6, but are terribly convenient. 

I am not going to mention proprietary editors, but maybe I should talk
about other small editors such as `nano` or even graphic ones such as
Kate or Geany. I really do not know the state of support for these
languages and they are not even mentioned in
the [Whatever page of the Perl6.org website](https://perl6.org/whatever/). So your mileage might
vary from 0 to, well, Whatever. 


## Shells within editors

Editors are cool because they allow to work with all kind of symbols
that are not exactly text, or that  cannot be produced with a
combination of key strokes. Emacs is great at that, and it can access
the whole set of symbols that are out there by name using a
combination of keys. And it can also run a shell inside, your favorite
shell, in fact. So enter `emacs` and then type `Escape key + x` and
then, when a prompt appears in the lower line, `shell` and you will
have your shell running *inside* Emacs, with access to all kind of
goodies, like saving sessions as files, searching using all Emacs
facilities, and all kind of symbols that can be used in it. 


# We need to talk about Unicode

This section, along with some other you will find interleaved with the
Perl 6 ones, does not belong to the language proper, but it is still something
that has to be mentioned. Languages are used to write applications,
and these can use any language in the world. [Unicode](https://unicode-table.com/es/) is the way to use
any alphabet, and some [neographies](http://www.omniglot.com/conscripts/natlangs.htm) and emoticons, in our
programs. Luckily enough, Perl6 packs one of the best supports for
this; unluckily, Unicode is complicated *per se*, so we will have to
learn a bit of linguistics to understand how we, later on, are going
to handle this, which we will even if we write only for ourselves.

First important concept is the *codepoint*. A code point is pretty
much equivalent to a letter, although it can be a symbol or also a
formatting instruction such as Tab or Newline. Every code point
corresponds to a numeric combination, which is usually expressed in
hexadecimal; for instance, `0x2017` corresponds to the character `‗`,
part of a table-drawing set. Every character also has a series of
attributes, including the category; this character belongs to the `Po`
[category](https://en.wikipedia.org/wiki/Unicode_character_property#General_Category),
meaning that it is *Punctuation, other*. The [properties](http://userguide.icu-project.org/strings/properties) include a
series of attributes such as the fact that they are numeric or can do
things like folding to a particular case or be joined to the next
character, or even if the direction they are written in. 

Characters are written as [graphemes](http://mathias.gaunard.com/unicode/doc/html/unicode/introduction_to_unicode.html#unicode.introduction_to_unicode.grapheme_clusters), and usually a code point
corresponds to a single written grapheme; however, in some cases code
points group to form a *grapheme cluster*, which is a set of code
points that constitute a grapheme; the most common example is letters
with marks such as á, but more complicated expressions might be
thought of. Or not, depending on your imagination. 

You write graphemes and grapheme clusters as *glyphs*, or letters. And
these are typeset, in a particular environment, using *fonts*. A font
is a set of mathematical formulae, yes, there is math involved, that
allows to render a particular letter in many different sizes and forms
such as italics or boldface. The fact that they are a formula, and
that you have to design formulae for every single glyph, means that
not all glyphs might be available in all fonts. Some fonts will have
all, or most of them, some of them not. And that, in turn, means that
some Etruscan letter such as this one 𐌚 that renders beautifully in
your editor might show up as an x-marked rectangle or question mark
somewhere else, a console or a word processor. In fact, depending on
how you are reading this, you might not see the glyph I'm referring to
at all. Some other glyphs, like this jack of diamonds 🃋, will not show
up on your editor or even in a PDF document. However, you will be able
to see it in most browsers. 

Your take away message here should that you need to know how to use
Unicode in whatever program you use, and that some particular
structures of the program, like operators or names, will use graphemes
with particular properties, probably something alphabetic-like. Also
that Unicode is complicated, but that you should better learn about it
as soon as possible, as in now. 
