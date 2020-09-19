#!/usr/bin/env raku 

# Tutorial eslibre 2020: Aprendiendo Raku

# Ejecutando Raku

=begin code
> raku
> zef install Linenoise
> comma 
=end code

# Hola mundo

{};
{.say}();
{$_.say}(3);
{ "$_ world" .say}( "Hello" );


# Literales y expresiones numéricas, números Unicode, operadores Unicode

sin(π/2) +1;
sin(π/3) × sin(π/3) + cos(π/3) × cos(π/3);
sin(π/3)² + cos(π/3)²;


# Introspección y orientación a objetos

(sin(π/3)² + cos(π/3)²).WHAT;
(sin(π/3)² + cos(π/3)²).^name;
" is 1".WHAT;
 ⅓+4/3;
(⅓+4/3).^name;


# Tipado pato

sin(π/3)² + cos(π/3)² + " is 1";
6 ~ "6";
"1" ~ "\n" ~ "2" x 2 ~ "\n" ~ "3" x 3 ~ "\n" ~ "2" x 2 ~ "\n" ~ "1";

# Array y bucle
<a b 7 ⅓ π²>;
sort <a b 7 ⅓ π²>;
<a b 7 ⅓ π²>.sort;
for <1 2 3 2 1> { say $_ x $_ }

# Magia con operadores

<a b 7 ⅓ π²> , < → ← >; # Concatenando
flat <a b 7 ⅓ π²> , < → ← >;
<a b 7 ⅓ π²> X < → ← >;


# Usando objetos y números aleatorios

(flat <a b 7 ⅓ π²> , < → ← >).pick;
< → ← >.roll(6);
< → ← >.roll(6)[3];

# Rangos, secuencias y rodajas

(0..10).WHAT;
1...222;
1 … 333;
(flat <a b 7 ⅓ π²> , < → ← >)[3..6];
(0..10)[3..6];

# Reducciones

[+] 1 … 333;
[+] 1,3 … 333;
[+] 1,3,9 … 333;

# Secuencias perezosas

1,3,9 … ∞;
(1,3,9 … ∞)[100];
(1,3,9 … ∞)[1000…1100];
(0,5,10 … ∞)[^25];

# Rangos, secuencias y hiperoperadores

[~] 'a'..'z';
[\~] 'a'..'z';
[\*] 1..25;

# Operadores vectoriales

(1,3...10) X (2,4...10);
(1,3...10) X* (2,4...10);

# Operador cremallera

(5,10...Inf)[^20] Z (4,8...Inf)[^20];
(5,10...Inf)[^20] Z* (4,8...Inf)[^20];

# Fracciones

(1/2,1/3...Inf)[5];
(1/2,1/3...Inf)[^5];

# Hiperoperadores

say (&sin, &cos, &sqrt)».(0.5);
1 <</<< (1..100);
<1 2> <</<< (1..100);
-<< (1..100);

# Una liga completa

( <ARS AST BOU CHE EVE LEI LIV MCI MUN NEW>.pick(10) 
  «~» 
    ( " - " «~« <ARS AST BOU CHE EVE LEI LIV MCI MUN NEW>.pick(10))) 
    »~» "\n";


# (Hiper) operadores lógicos

?<< ("","False",0,1,333,0.5);
!<< ("","False",0,1,333,0.5);

# Operadores simples

so "";so "this";


# Comparando

3 > 2;
2 == 3;
2 == "2";
3 == Ⅲ;
"aardvark" ge "bee";
"ρ" le "Ρ";
"ᚙ" gt "ﺶ";

# Nuestro primer "smartmatch"

3 ~~ "3.0";
3 ~~ Int;
3 ~~ /\d/;

# Filtros

(2000..2100).grep( { .is-prime} );
(2000..2100).grep: { .is-prime} ;
grep { .is-prime}, 1..Inf;


# Operando y filtrando

(0,π/2,π,3*π/2,2*π)».sin;
grep { .so }, (0,π/2,π,3*π/2,2*π)».cos;

# Operadores de listas (y de reducción)

min (3/4, 5/6, 3/8, 2/3);
[lcm] (5, 77, 343);
[\lcm] (5, 77, 343, 881);

# ¡Conjuntos también!

332 ∈  (7,14...2000);
(1..100).grep(* %% 7);

# Un ejemplo complejo

¾, π,{ $^þ + 7},"a", "b").grep( {$^þ.WHAT ~~ Str};

# Lógica

(7 > 1) && (7 < 10);
True || (7 < 10);

# Operador ternario

(3 > 2)??"Bigger"!!"Smaller";
("3".WHAT ~~ (Str))??"Tres"!!3;

# Secuencias perezosas ... y listas

11,22 ...  * %% 7;
2100,2200 ...^ * %% 400;


# Conjuntos

# set(1,⅓,"foo",{ $^þ %% 3});
set(⅓,¼,"a","what?") == set("a","what?",⅓,¼);
set(^1000);

# Operaciones de conjuntos

set( <ABE CEL DUN HAM HEA INV KIL MOT PAR RAN ROS STJ> ) ∩ 
set( <ABE CEL DUN DUU HAM HEA INV KIL MOT PAR ROS STJ> );

(set( <ABE CEL DUN HAM HEA INV KIL MOT PAR RAN ROS STJ> ), 
 set( <ABE CEL DUN DUU HAM HEA INV KIL MOT PAR ROS STJ> ), 
 set(<ABE CEL DUN DUU HAM  INV KIL MOT PAR ROS STJ STM >) );

[∩] (set( <ABE CEL DUN HAM HEA INV KIL MOT PAR RAN ROS STJ> ), 
     set( <ABE CEL DUN DUU HAM HEA INV KIL MOT PAR ROS STJ> ), 
     set(<ABE CEL DUN DUU HAM  INV KIL MOT PAR ROS STJ STM >) 
    );

set( <ABE CEL DUN HAM HEA INV KIL MOT PAR RAN ROS STJ> ) (^) 
set( <ABE CEL DUN DUU HAM HEA INV KIL MOT PAR ROS STJ> );

set( <ABE CEL DUN HAM HEA INV KIL MOT PAR RAN ROS STJ> ).pick(2);

set( <ABE CEL DUN HAM HEA INV KIL MOT PAR RAN ROS STJ> ) (-)

set ( set( <ABE CEL DUN HAM HEA INV KIL MOT PAR RAN ROS STJ> ).pick(2) );

# Operadores de conjuntos

127 ∈  set(7,14...1000);
127 ∉  set(7,14...1000);

# Junctions

all <innie minnie moe 0>;
(so all <innie minnie moe Really>) == True;
so 84 == any 7,14…100;
so 84 == none 11,22…100;

# WhateverCode

(1..1000).grep(* %% 11);
(1..1000).grep( {$_ %% 11} );
(1..1000).grep: * %% 11;
# (1..1000).grep($_ %% 11); # Error

# Bloques "en punta"

(1..1000).grep: -> $a {$a %% 11};
(1..1000).grep: sub ($a) {$a %% 11};

# Variables implícitas

{ $^foo ** $^bar }( 12,13 );
{ ([*] 1..$^ß ) / ( [*] 1..$^þ) * ([*] 1..($^ß - $^þ)) }(5,3);
( { $^ß * 2},{$^þ / 2} );
( { $^ß * 2},{$^þ / 2} ).grep:  { $_.(2) %% 2 };

# Map

map *², 1..∞;
(map {$^þ²}, 1..∞)[333];
(1,.9999999999999999, { $^ß * $^þ}...∞);
(0,{$^ß²+0.5+0.3i}...∞)[^100];
(0,{$^ß²-0.5+0.3i}...∞)[^100];

# Bloques
{ (0,{$^ß²+$_}...∞) };
{ (0,{$^ß²+$_}...∞) }(.01+.1i);
({ (0,{$^ß²+$_}...∞) }(.01+.1i))[^100];

# Son de primer orden

 ( { $^ß * 2},{$^þ / 2 );

# Hashes

{ name => 'Lilly', PAX => 3, amenities => 'Boiler, Fan, barely any spider'};
{ name => 'Lilly', PAX => 3, amenities => 'Boiler, Fan, barely any spider'}<name>;
{ name => 'Lilly', PAX => 3, amenities => 'Boiler, Fan, barely any spider'}{"name"};
{ name => 'Lilly', PAX => 3, amenities => 'Boiler, Fan, barely any spider'}<name PAX>;

{
  101 => {PAX => 3, amenities => "Boiler, Fan, barely any spider", name => "Lilly"}, 
  102 => {PAX => 1, amenities => "Open air, no ceiling", name => "Daffodil"}, 
  201 => {PAX => 2, amenities => "IKEA room, build it your way", name => "Rose"}
};

{
  101 => {PAX => 3, amenities => "Boiler, Fan, barely any spider", name => "Lilly"}, 
  102 => {PAX => 1, amenities => "Open air, no ceiling", name => "Daffodil"}, 
  201 => {PAX => 2, amenities => "IKEA room, build it your way", name => "Rose"}
}<101><amenities>;

{
  101 => {PAX => 3, amenities => "Boiler, Fan, barely any spider", name => "Lilly", :occupied }, 
  102 => {PAX => 1, amenities => "Open air, no ceiling", name => "Daffodil"}, 
  201 => {PAX => 2, amenities => "IKEA room, build it your way", name => "Rose", :occupied}
};

# Pares

occupied => True ;

# ¡Variables!

my $series = 1..30;

{  my $series = 30..1 };
$series;

# Lambdas

my $reverse-series = {  
    my $series = 1..$_; 
    reverse  $series; 
};

my $reverse-series = { reverse 1..$_ };
$reverse-series(30);
my $ain't-this-cool =  { $_, $_*2 … ∞ };
$ain't-this-cool( 11 )[^10];

# Unicode en los identificadores

my $α = True;
my $ß = False;
$α and $ß;
my $not-greek = 38;
my $δ = so $not-greek;


# Final...
