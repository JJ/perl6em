<a id="orga5777eb"></a>

# Working with, in and around data

Eventually you will need to give things a name, if only to avoid
cutting, pasting and recomputing stuff every time you need
it. *Variables* store results and help you express, in a compact way,
complicated formulae. 


<a id="orgeb44672"></a>

## Calling things by their name

Naming objects and data is not always necessary, but it is convenient
if results of operations and operations themselves want to be repeated
over and over. If you are going to use them only once, there is no
need to do it, but attaching a label to an operation or a piece of
data will allow us to keep working on it for a while and create more
complex operations. Variables use *sigils* in Perl, which are funny
characters that *precede* a name. But even before you start to name
things you  need to know who should know about them. 

    my $series = 1..30

Most usual variables will only belong to yourself, and only need to be
seen in the inmediate surroundings, nothing farther away than the
closest keys. You don't need to say other things, like type and that
stuff. Just the name. 

This `my` is important, because it limits the visibility and the value
of the variable, what is called the *scope* to the surrounding block,
which for the time being is going to be the closest curly braces
surrounding it. 

    my $series = 1..30
    {  my $series = 30..1 }
    $series

This would return the initial, and not the inverted, value of
`$series` since the second example is surrounded by curly braces, that
limit its range of action. 

This can be used to give functions its own variables

    my $reverse-series = {  
        my $series = 1..$_; 
        reverse  $series; 
    }

This function, that counts down from the number you hand it to 1 and
can be used this way:

    $reverse-series(30)

deserves just a little time to ponder here. First, it is using a variable declared
with `my` just the way we did before. This *hides* that variable from
outside peeping, but also maintains whatever value that variable had
before calling after it. `my` gives blocks, or functions, the
possibility of creating their own variables and using them without
worrying about what was defined outside them. Second, we have used the
more natural dasg `-` as part of the variable name. Most languages
only allow variables to be named with numbers, letters, and for some
reason, the underscore symbol. Perl6 is much more flexible, with
[variables](https://docs.perl6.org/language/variables#The_my_Declarator) named using many different letters from different alphabets,
as well as the dash, the underscore, and, for some reason, the `'`.

    my $ain't-this-cool =  { $_, $_*2 … ∞}

This function, which returns an infinite series of multiples of
whatever is used as an argument, and can be used this way:

    $ain't-this-cool( 11 )[^10]

to return the 10 first multiples of 11, for instance, uses dashes as
well as apostrophes. This might seem capricious if you come from the
type of languages that only allowed to call variables
`SOMETHINGLIKETHIS`, but it actually makes a lot of sense. Before
coming back to the above defined function, we will talk a bit about
something else. 


<a id="org0f76152"></a>

## Naming things

The main error in a whole generation of programmers is to think that
programs are written to do stuff. They are not. They are written to do
stuff *and* be read by other fellow programmers. This happens
eventually, whether you want it or not. These fellow programmers will
want to understand what is going on there, and a you can carry them a
big part of the way by giving things a proper name. Having a rich way
of naming things help, but the biggest help comes from following a
series of practices that have been honed through time.

First and most important, be consistent when naming things. Use always
first capital letters when you need to use them, lower case when you
need to do that, use Greek letters for whatever you want them, but
always Greek, not Phoenician or, god forbid, Carthaginian. You might
decide, for instance, that all Boolean variables, holding a True or
False value, must be named using Greek letters, because, you know,
they invented logic and all.

    my $α = True
    my $ß = False
    $α and $ß

Always follow that convention. Whatever is going to become a logical
value, give it a Greek letter name.

    my $not-greek = 38
    my $δ = so $not-greek

A good convention for separing words is also a good idea. Perl 6
allows to use the dash, as above. You can also use `CamelCaps` but the
one above is much more readable, and since it is possible, you should
use it.

The most important thing, however, is to give things their proper
name. A file name should be `$file-name` and not `$f`. You can use
verbs for functions, for instance, but do not use `$a` if what you
mean is `$alphabetical-sequence`. Even if it results in a long name,
just like that one, prefer the explicit to the cryptic. There is an
exception to this rule: loop variables are usually called with a
single letter. You do not *need* to do it, however, although most
people will understand if you do so. 

At the end of the day, there are [many different conventions you can use](http://stackoverflow.com/questions/4211025/what-are-some-best-practices-to-follow-when-naming-variables). However, the most
important thing is this: keep it consistent, make it readable, and
think about the fellow programmer that will have to maintain the code
a few years down the line.


<a id="org94eb9ea"></a>

## Building up with variables

Variables can be used anywhere an expression was used before.  Type
these lines in the command line, one after the other

    my $set-a = set( <a b c>)
    my $set-b = set( <b q r>)
    my $set-c = set( <p c b>)
    my @some-sets = ($set-a, $set-b, $set-c)
    [∩] @some-sets

We are using here `@` for groups of things to which we are going to
apply operations that usually apply to group of things, such as the
operators surrounded by `[]`. Having an `@` is useful to make the
operators that are applied to it know that what they are dealing with
is actually a group of things and that the operation should be applied
to them separately. In this case, the usual `[∩]`, that is,
intersection, will be applied to them in turn to return the set that
includes the element present in all of them, in this case, `b`


<a id="orgb2de386"></a>

## Functions as variables revisited

\#TODO


<a id="orgbc93197"></a>

## What can a variable contain

A variable can hold anything

    my $my-hand = <3 J Q K>

And you can work with variables just the same way you did before
without them

    $my-hand.elems

These variables will dissapear as soon as you get out of the Perl
shell. 
In the last case, however, you might want to use `@`, which deals with
anything that has some *structure* inside.

    our @numbers = flat 2..10 , &lt;A J Q K>
    our @poker-cards = @numbers X~ <♥ ♦ ♣ ♠>


<a id="org5e505c3"></a>

## Some things change. Some others don't.

Calling something a variable might be a bit misleading when it
actually does not vary. However, in the very beginning everything
variable could vary, because they were simply a bunch of memory
positions that got to be called by a name. You wrote something else in
that position, well, it became actually *variable*. 

However, we are in the 21st century, and some variables actually
don't. Has anyone come up with another name? Noooo. So we get stuck
with it, and have to add some fancy-pants adjectives to tell apart the
variables that vary from the variables that do no


<a id="orgc362526"></a>

# ‎ι - Markdown for documentation

Every project should have a `README.md` that explains what it is
about, for everyone else if it is public, for our future self if it is
not. That `README.md` you have already created is written using
Markdown, a simplified method that adds marks to plain text to denote
its role in the document: its importance, if they are headers, and
even if they represent a hyperlink or the inclusion of an image. 


<a id="orgab52120"></a>

# Functions include fun

Functions are just baptized pieces of code, but in the same way it
happens in magic kingdoms, knowing the name of something gives you
a handle to work with it. And work you will do. 


<a id="org6864144"></a>

# κ - Speak in tongues

You have to speak in tongues if you want to program properly. There is
never a single language that fits every programming need, but if there
is one, it is not going to be Perl 6. So we have to, at least, check
out other language and the first language of choice has to be
[JavaScript](https://www.javascript.com/), if only because it is a language embedded in every browser
and, eventually, you will need to dabble with it to program the user
interface of your application, or even whole applications in a single
web page. 

While at the beginning JS was confined to the browser, it is not any
more that way. You can program server and desktop applications, even
embedded applications.

The good thing is: you already know a bit of JS. Let's put it to use
right away.


<a id="orgdb5916c"></a>

## What you already know about JS

JS is an interpreted language, just like Perl6. There is probably a JS
interpreter you can access from the command line. Type `js` or `node`
and check out what happens. But even if you do not, the *developer*
options of your browser will allow you to access a JS command line
from every computer, tablet or mobile. In the free browser Firefox,
for instance, shift-control-K will make a *developer* console pop
up. The line at the bottom, with `>>`, will be a javascript console.

![img](./img/js.png "Using JS in your browser.")

It is not the only place you can play with it. The javascript.com site
includes also an interpreter with an interactive
tutorial. [JS fiddle](https://jsfiddle.net/) allows you to mix it with web sites and
everything, and can be used later on to program. But let's stick to
the command line, which is readily available and everywhere. 

And you already know how to work with expressions, as we have seen in chapter
[3](#org804d699). This

    3**25

will work exactly the same, but to concatenate two strings you will
have to use

    "3" + "4"

instead of `~` which is what we use for Perl6. Every language has got
its own symbols as you go away a bit from basic arithmetic
expressions. Even more so if you deal with math, which will use the
preffix `Math` in Javascript:

    Math.sin(Math.PI/2)

Fortunately, this command line will help you along the way by
displaying all the possibilities that start with a single letter. 

Some things are different: you *do* need to work with variables if you
want structures a bit more complex, like the one we have seen in chapter
[8](#org9929166). 

    var zipi = { "name": 'Lilly', "PAX": 3, "amenities": 'Boiler, Fan, barely any spider'}

The curly braces are exactly the same and there are colons instead of
fat arrows; also some quotes where we did not need them before. That
is the particular syntax of the language, but still we are doing
exactly the same: creating a complex variable that describes a hotel
room and assigning it to the name `zipi`

![img](./img/js2.png "Defining variables")

The point here is that you have a expression interpreter readily
available everywhere you go, and also that computer languages, at
least modern ones, sometimes look more or less the same. So you can
just dive into them and start working with them when you need them.


<a id="org32edf42"></a>

## But you can do real stuff

You probably do everything in the browser right now. You can start
program it as well if you know a bit of JavaScript. The same command
line mentioned above allows you to go into the web page and change its
code, and you can do that if you want; you can just visit it and see
how it is done. But it is probably easier to work with environments
such as [BROKEN LINK: nil], an interactive browser environment, and
program animations and cool stuff. When you load the page, you find
something like this:

    // Hey there, welcome to WoofJS! WoofJS is a Scratch-inspired JavaScript library for making games.
    // Want to code something together? :-)
    every(.001, 'seconds', () => {
      var circle = new Circle()
      // Go, little circles, go!
      forever(() => {
        circle.move(5)
      })
      // Let's randomize size
      circle.radius = random(5, 20)
      // Colors are fun!
      circle.color = randomColor()
      // I say scatter!
      circle.angle = random(0, 360)
      // Now it's your turn. Play with this code by changing any of the numbers above.
    })

(I have compressed a bit the code so that we can see it
together). First, the lines starting with `//` are comments. They tell
you what the other non-commented lines do. And just by reading them,
you can start to understand what the program does. 


<a id="orgfcb4f49"></a>

# Don't change this

There is a certain style of programming that makes more efficient to work with data that cannot be changed. Perl6 makes good use of this style of programming. 


<a id="org84eecce"></a>

# Stand in the shoulders: *modules* and using whatever is available

If there is a single motto you should follow when programming, is this
one: *Don't reinvent the wheel*. Before sitting down to do something,
check out if it has been already done. In mature languages like Perl,
the answer is most probably Yes. In some others, like this Perl 6 we
are dealing with, your mileage may vary. 


<a id="orgeb044e9"></a>

# κ - Never program alone

Programming might seem like a lone pursuit, but it is everything
but. Programming is always done in teams, and you have to consider the
opinions of the other members of the team, as well as the directions,
the advice, or simply the code they have written to learn or to build
upon. However, this interactions happen during meetings or other ways
of collaboration, mainly through repositores, as we have seen
before. But there is an alternative way where you
[collaborate all the time: peer programming](https://en.wikipedia.org/wiki/Pair_programming). Programming in peers
matches two programmers, one of them at the keyboard, and the other
performing different functions: deciding what to do next, reviewing
the code that is being written, and taking into account always the
*bigger picture*, as opposed to the small task that is being done
right now right here.
There are many different ways of carrying this out: programmers can
have the same degree of seniority or one of them can be senior and
thus help the other improve her practice. The important thing is that
it must be done collaboratively and improve the synergies in the team
by understanding better the capabilities of each other.


<a id="org11fcc95"></a>

# ד‎ - Getting help

No matter how good you are, or how easy the learning curve is, you
might eventually get stuck, because you do not find your way in a maze
of documents, you do not really know what you are looking for so that
you cannot tell Google precisely what you want, or maybe you ended up
in an alley nobody has ever been before. You cry for help, and a
language is only as good as the facilities that there are for helping
people in your predicament. Fortunately, Perl 6 is very good at that. 


<a id="org6fe64c6"></a>

# Building up: *scripts* and *programs*

Doodling with the REPL is fun, but eventually you will need to profit:
the program has to be stored and maybe shipped somewhere. Architecting
a script needs to put your computational thinking skills to work. 


<a id="org7584d3c"></a>

## Show and tell

Any good program should be self describing, and of course a *good*
program is what *you* do, except it is not. Do yourself a favor and
explain what is going on in your program all the time and any time you
do something that is too clever or exactly the opposite. That probably
means *always*. 


<a id="org30f4af8"></a>

# θ - Pack all your troubles in a container

Applications run nowadays in all kind of places, so eventually someone
found a way to put all the stuff you need to run them in a single
tupperware container and ship it anywhere you need them, in the same
way as you pack your potato omelette in a tupper and carry it to grab
a byte in a picnic or during your train trip to Poughkeepsie, as you
are wont to do. Same goes for programs. Create it, pack it, take it
anywhere: the cloud, your other computer, anywhere you please. And if
you add another tupper with mandarines and yet another with a few
cupcakes, you have got your whole snack-a-lot ready to take anywhere.

Applications nowadays are composed of the equivalent of a three or
even more course meal. They have several courses plus snacks and even
a doggie bag to pack leftovers and a plastic bag for organic
trash. You can carry them in several places on you and your clothes,
but it is much better to just pack containers for everything and lay
them out on the table when you are ready to eat. In the case of
applications, they can be data processing units, data storing units,
data fooing and data baring units. Does not really matter what they
are, but the thing it that *containerization* makes easy the creation
of a whole suite that can be stored and shipped anywhere. 


<a id="org9c84464"></a>

# You decide

But sometimes it is better to let the machine do it for you.


<a id="org2a0c0d4"></a>

# г - Always play it safe

As long as you have created a program that is out there on the
Internet, and you need to take care of sending it somewhere, in a
Docker container or some other way, you need to *play it safe*. A
cloud container or virtual machine instance is just a resource for
crackers and fraudsters which will use all means possible to get hold
of it and hold it hostage for ransom or use it for bitmining,
launching distributed denial of service attacks, or as a cache for
stolen data. Fortunately, cloud and hosting providers usually detect
and deactivate them as soon as they find out, but you might incur in
huge bills or maybe huge annoyances while you work out with customer
service to have that bill erased.

That is why, as soon as you start to write your programs, you need to
play it safe. 


<a id="orgb5f34e7"></a>

# Interacting with the user

Programs are created to be used. Many of them will be used by just
you. But some of them will be out there. You have to build them for an
ideal user, and that ideal user is a 90-year old FSB agent that is on
one hand not familiar with modern technology and that on the other
hand is familiar enough to try and break and enter in your program to
steal your family secrets. User interfaces have to be easy on the
user, but also secure. Never forget that. 


<a id="org5bb63a6"></a>

# ι - Testing for the win

*If it is not tested, it is broken* is something that you should learn
as soon as you start to crank out code. It actually means *If it is
not **automatically** tested, it is broken*, that is, it is not enough
that you give it two or maybe one input, and declare yourself
satisfied with it. No, son, that is not testing and you know it. 


<a id="org6f29b42"></a>

# Interacting with the system

Systems are full of interesting things, and nowadays there is also the Internet, which is full of stuff too. Getting data back and forth is something you are going to need to do, like, all the time. 


<a id="orgff0c311"></a>

# κ - lay the internet to rest


<a id="org652a59d"></a>

# It's deja vu all over again

What computers are good at is at repeating things. However, that has
not made anyone name them repeaters instead of computers. Actually, in
some European countries they are called *sorters*, from the French
*ordinateur* that means exactly that. Looks like French people are
good at making up words and also naming things in unexpected, but accurate, ways. 


<a id="org9d98b4e"></a>

# Д - Find the bug

Testing reduces the need to find errors, but eventually some non-tested feature or a combination of things will make your program behave unexpectedly. No worries. *Debugging* is the way to go. 


<a id="org1632174"></a>

# Understanding text

Machine learning is all about understanding text. That text does not
come in a shape you can easily process it. Regular expressions help
you deal with text that is not totally structured, but that has some
regularities in it. And from regular expressions you can build up grammars, powerful tools that can extract information from any kind of text structured just so.


<a id="org2f8d612"></a>

# λ - What you need to know about the cloud

The *cloud* is where you run your programs nowadays. That is all you
need to know.

Not really. But almost.


<a id="orgc786bee"></a>

# Keep things where you can get them back again

And this is like the lengthiest chapter title ever, but it is really
important to learn to store data and do so in a way that can be easily
retrieved later on. 


<a id="org5792ebc"></a>

# ж- Deploying to the cloud

You have probably been told, by myself in the previous chapter, that
the cloud is where you run your program. But it is not going to go,
all by itself, to a cumulonimbus out there. You have to physically
take it, and that is what is called *deploying*. 


<a id="org13d0032"></a>

# Using stuff from the cloud

The isolated application is something that existed in the early
nineties, but not any more. All applications are connected, in some
way or another, to other applications, sometimes over the Internet,
and sometimes to other computers you do not own. Application
programming interfaces, or APIs, allow you to do so, which is
great. Those programming interfaces can be easily used to perform many
of the tasks that programs perform routinely, like authenticating or
logging activities. We will see a few of these. 


<a id="orga3f6367"></a>

# μ - The world is my platform

When creating a program, you can literally get the world to process part of your stuff, or obtain data from the same world. *Application programming interfaces* make accessible, over the Internet, functions that would be annoying or simply impossible to have on your own computer. 


<a id="org184681a"></a>

# Analyzing data


<a id="orgf87e63b"></a>

# ν - Performance to the max

The first objective you have when writing a program is to make it
work. The second is to make it work *all the time*. The third is to
make it work *faster, and all the time*. Performance matters.


<a id="orgd479c5e"></a>

# A classy affair

We have already seen that data usually does not walk alone. It has
some properties, and there are some things you can do to certain kind
of data, some functions you can call, which you cannot in other types
of data. At the end of the cay, a class is only another way of calling
a Type. Which means you can create your own types, and then create
objects that have that type. 


<a id="orgbdaaee6"></a>

# ξ - Agile development for the win


<a id="orgf92df78"></a>

# Keeping track of time

You will have to deal with them all the time, so they might as well be part of the system. 

