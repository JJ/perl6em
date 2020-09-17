# All the examples extracted from the text

perl6

# Example

To exit type 'exit' or '^D'
> sin(π/2)

# Example

sin(π/2) +1

# Example

zef install Linenoise

# Example

sin(π/3) × sin(π/3) + cos(π/3) × cos(π/3)

# Example

sin(π/3)² + cos(π/3)²

# Example

3**25

# Example

(sin(π/3)² + cos(π/3)²).WHAT

# Example

sin(π/3)² + cos(π/3)² + " is 1"

# Example

" is 1".WHAT

# Example

 ⅓+4/3

# Example

(⅓+4/3).WHAT

# Example

6 ~ "6"

# Example

"1" ~ "\n" ~ "2" x 2 ~ "\n" ~ "3" x 3 ~ "\n" ~ "2" x 2 ~ "\n" ~ "1"

# Example

for <1 2 3 2 1>  { say $_ x $_ }

# Example

<a b 7 ⅓ π²>

# Example

sort <a b 7 ⅓ π²>

# Example

<a b 7 ⅓ π²> X < → ← >

# Example

<a b 7 ⅓ π²> , < → ← >

# Example

flat <a b 7 ⅓ π²> , < → ← >

# Example

 (flat <a b 7 ⅓ π²> , < → ← >).pick

# Example

< → ← >.roll(6)

# Example

 < → ← >.roll(6)[3]

# Example

(flat <a b 7 ⅓ π²> , < → ← >)[3..6]

# Example

(0..10)[3..6]

# Example

(0..10).WHAT

# Example

1...222

# Example

1 … 333

# Example

[+] 1 … 333

# Example

[+] 1,3 … 333

# Example

[+] 1,3,9 … 333

# Example

1,3,9 … ∞

# Example

(1,3,9 … ∞)[100]

# Example

(1,3,9 … ∞)[1000…1100]

# Example

(0,5,10 … ∞)[^25]

# Example

[~] 'a'..'z'

# Example

[\~] 'a'..'z'

# Example

[\*] 1..25

# Example

(1,3...10) X (2,4...10)

# Example

(1,3...10) X* (2,4...10)

# Example

 (5,10...Inf)[^20] Z (4,8...Inf)[^20]

# Example

 (5,10...Inf)[^20] Z* (4,8...Inf)[^20]

# Example

 (1/2,1/3...Inf)[5]

# Example

 (1/2,1/3...Inf)[^5]

# Example

1 <</<< (1..100)

# Example

 <1 2> <</<< (1..100)

# Example

-<< (1..100)

# Example

( <ARS AST BOU CHE EVE LEI LIV MCI MUN NEW>.pick(10) 
  «~» 
    ( " - " «~« <ARS AST BOU CHE EVE LEI LIV MCI MUN NEW>.pick(10))) 
    »~» "\n"

# Example

git clone https://github.com/yourname/yourrepo

# Example

git add a_new_file

# Example

git commit -m "Adds file for doing stuff"

# Example

?<< ("","False",0,1,333,0.5)

# Example

!<< ("","False",0,1,333,0.5)

# Example

so "this"

# Example

so ""

# Example

3 > 2

# Example

2 == 3

# Example

2 == 3

# Example

2 == "2"

# Example

3 == Ⅲ

# Example

3 ~~ "3.0"

# Example

"aardvark" ge "bee"

# Example

"ρ" le "Ρ"

# Example

"ᚙ" gt "ﺶ"

# Example

(2000..2100).grep( { .is-prime} )

# Example

(2000..2100).grep: { .is-prime} 

# Example

grep { .is-prime}, 1..Inf

# Example

(0,π/2,π,3*π/2,2*π)».sin

# Example

grep { .so }, (0,π/2,π,3*π/2,2*π)».cos

# Example

min (3/4, 5/6, 3/8, 2/3)

# Example

[lcm] (5, 77, 343)

# Example

[~] 'a'..'z'

# Example

[\lcm] (5, 77, 343, 881)

# Example

 332 ∈  (7,14...2000)

# Example

(1..100).grep(* %% 7)

# Example

(¾, π,{ $^þ + 7},"a", "b").grep( {$^þ.WHAT ~~ Str} )

# Example

(7 > 1) && (7 < 10)

# Example

True || (7 < 10)

# Example

(3 > 2)??"Bigger"!!"Smaller"

# Example

("3".WHAT ~~ (Str))??"Tres"!!3

# Example

11,22 ...  * %% 7

# Example

2100,2200 ...^ * %% 400

# Example

cp this.is.the.original.file ../to/this.is.a.copy

# Example

mv this.is.the.original.file ../to/this.is.a.copy

# Example

find /home/thisisme -name "*.pl6" -print

# Example

grep foo *.pl6

# Example

ls *.pl6 > all-perl6-files.txt

# Example

touch I_am_touched

# Example

set(1,⅓,"foo",{ $^þ %% 3})

# Example

set(⅓,¼,"a","what?") == set("a","what?",⅓,¼)

# Example

set(^1000})

# Example

set( <ABE CEL DUN HAM HEA INV KIL MOT PAR RAN ROS STJ> )
#+end_EXAMPLE
where we use the =<>= notation to make shorter the defined array that
is later turned into a set. If we compare it to the premiership of the
previous year there are subtle changes
#+BEGIN_EXAMPLE perl6
set( <ABE CEL DUN DUU HAM HEA INV KIL MOT PAR ROS STJ> )
#+end_EXAMPLE
that can be inmediately revealed using
[[https://perl6advent.wordpress.com/2012/12/13/day-13-bags-and-sets/][set operators]]:
#+BEGIN_EXAMPLE perl6
set( <ABE CEL DUN HAM HEA INV KIL MOT PAR RAN ROS STJ> ) ∩ 
set( <ABE CEL DUN DUU HAM HEA INV KIL MOT PAR ROS STJ> )
#+end_EXAMPLE
which returns the set of 11 teams that have not either been promoted or
relegated. We can even go ahead and create a list or array of teams in
every division 
#+BEGIN_EXAMPLE perl6
(set( <ABE CEL DUN HAM HEA INV KIL MOT PAR RAN ROS STJ> ), 
 set( <ABE CEL DUN DUU HAM HEA INV KIL MOT PAR ROS STJ> ), 
 set(<ABE CEL DUN DUU HAM  INV KIL MOT PAR ROS STJ STM >) )
#+end_EXAMPLE
which is simply a list of sets separated by commas and surrounded by
parentheses, and then find out which teams have remained in the
Scottish premiership for all these years by applying the /reduction/
operator
#+BEGIN_EXAMPLE perl6
[∩] (set( <ABE CEL DUN HAM HEA INV KIL MOT PAR RAN ROS STJ> ), 
     set( <ABE CEL DUN DUU HAM HEA INV KIL MOT PAR ROS STJ> ), 
     set(<ABE CEL DUN DUU HAM  INV KIL MOT PAR ROS STJ STM >) 
    )
#+end_EXAMPLE
which will return a set of 10 teams that excludes Rangers, St. Mirren
and Heart of Midlothian. But we have to think a bit to find that
out. Set operators can also give us that information.
#+BEGIN_EXAMPLE perl6
set( <ABE CEL DUN HAM HEA INV KIL MOT PAR RAN ROS STJ> ) (^) 
set( <ABE CEL DUN DUU HAM HEA INV KIL MOT PAR ROS STJ> )
#+end_EXAMPLE
will return the /symmetric difference/ between the two sets, that is,
the ones that are included in the first but not in the second and the
other way round, in this case the two teams that were either demoted
or promoted, which is this set: =set(RAN, STM)=.

Picking fixtures out of this set is straightforward, using our well
known =pick=:
#+BEGIN_EXAMPLE perl6
set( <ABE CEL DUN HAM HEA INV KIL MOT PAR RAN ROS STJ> ).pick(2)

# Example

set( <ABE CEL DUN HAM HEA INV KIL MOT PAR RAN ROS STJ> ) (-)
set ( set( <ABE CEL DUN HAM HEA INV KIL MOT PAR RAN ROS STJ> ).pick(2) )

# Example

127 ∈  set(7,14...1000)

# Example

127 ∉  set(7,14...1000)

# Example

all <innie minnie moe 0>

# Example

(so all <innie minnie moe Really>) == True

# Example

so 84 == any 7,14…100

# Example

so 84 == none 11,22…100

# Example

rsync -avz -e ssh 192.168.1.38:/home/thisisme/ .

# Example

ssh thisisme@192.168.1.38

# Example

ssh-keygen -t rsa -b 4096 -C "jjmerelo@gmail.com"

# Example

ssh-copy-id -i .ssh/id_rsa.pub thisisme@192.168.1.36 

# Example

{ $_ * 2 }

# Example

{ $_ * 2 }.WHAT

# Example

{ $_ * 2 }( 2 )

# Example

(1..1000).grep(* %% 11)

# Example

(1..1000).grep( {$_ %% 11} )

# Example

(1..1000).grep: * %% 11

# Example

(1..1000).grep($_ %% 11)

# Example

(1..1000).grep: -> $a {$a %% 11}

# Example

(1..1000).grep: sub ($a) {$a %% 11}

# Example

{ $^foo ** $^bar }( 12,13 )

# Example

{ ([*] 1..$^ß ) / ( [*] 1..$^þ) * ([*] 1..($^ß - $^þ)) }(5,3)

# Example

( { $^ß * 2},{$^þ / 2} )

# Example

 ( { $^ß * 2},{$^þ / 2} ).grep:  { $_.(2) %% 2 }

# Example

map *², 1..∞

# Example

 (map {$^þ²}, 1..∞)[333]

# Example

(1,.9999999999999999, { $^ß * $^þ}...∞)

# Example

(0,{$^ß²+0.5+0.3i}...∞)[^100]

# Example

(0,{$^ß²-0.5+0.3i}...∞)[^100]

# Example

{ (0,{$^ß²+$_}...∞) }

# Example

{ (0,{$^ß²+$_}...∞) }(.01+.1i)

# Example

({ (0,{$^ß²+$_}...∞) }(.01+.1i))[^100]

# Example

 ( { $^ß * 2},{$^þ / 2 )

# Example

( 3 == 2)?"Yes":"No"

# Example

name: Lilly
PAX: 3
amenities: Boiler, Fan, barely any spider

# Example

{ name => 'Lilly', PAX => 3, amenities => 'Boiler, Fan, barely any spider'}

# Example

{ name => 'Lilly', PAX => 3, amenities => 'Boiler, Fan, barely any spider'}<name>

# Example

{ name => 'Lilly', PAX => 3, amenities => 'Boiler, Fan, barely any spider'}{"name"}

# Example

{ name => 'Lilly', PAX => 3, amenities => 'Boiler, Fan, barely any spider'}<name PAX>

# Example

{
  101 => {PAX => 3, amenities => "Boiler, Fan, barely any spider", name => "Lilly"}, 
  102 => {PAX => 1, amenities => "Open air, no ceiling", name => "Daffodil"}, 
  201 => {PAX => 2, amenities => "IKEA room, build it your way", name => "Rose"}
}

# Example

{
  101 => {PAX => 3, amenities => "Boiler, Fan, barely any spider", name => "Lilly"}, 
  102 => {PAX => 1, amenities => "Open air, no ceiling", name => "Daffodil"}, 
  201 => {PAX => 2, amenities => "IKEA room, build it your way", name => "Rose"}
}<101><amenities>

# Example

{
  101 => {PAX => 3, amenities => "Boiler, Fan, barely any spider", name => "Lilly", :occupied }, 
  102 => {PAX => 1, amenities => "Open air, no ceiling", name => "Daffodil"}, 
  201 => {PAX => 2, amenities => "IKEA room, build it your way", name => "Rose", :occupied}
}

# Example

occupied => True 

# Example

my $series = 1..30

# Example

my $series = 1..30
{  my $series = 30..1 }
$series

# Example

my $reverse-series = {  
    my $series = 1..$_; 
    reverse  $series; 
}

# Example

$reverse-series(30)

# Example

my $ain't-this-cool =  { $_, $_*2 … ∞}

# Example

$ain't-this-cool( 11 )[^10]

# Example

my $α = True
my $ß = False
$α and $ß

# Example

my $not-greek = 38
my $δ = so $not-greek

# Example

my $set-a = set( <a b c>)
my $set-b = set( <b q r>)
my $set-c = set( <p c b>)
my @some-sets = ($set-a, $set-b, $set-c)
[∩] @some-sets

# Example

my $my-hand = <3 J Q K>

# Example

$my-hand.elems

# Example

our @numbers = flat 2..10 , &lt;A J Q K>
our @poker-cards = @numbers X~ <♥ ♦ ♣ ♠>

# Example

3**25

# Example

"3" + "4" 

# Example

Math.sin(Math.PI/2)

# Example

var zipi = { "name": 'Lilly', "PAX": 3, "amenities": 'Boiler, Fan, barely any spider'}

# Example

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

