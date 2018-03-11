--2.2

sayHello :: String -> IO ()
sayHello x = putStrLn ("Hello, " ++ x ++ "!")

Prelude> :load test.hs
Prelude> sayHello "Haskell"
Hello, Haskell!
Prelude>

--2.3

1
1 + 1
"Icarus"

Prelude> 1
1

Prelude> 1 + 2
3

Prelude> (1 + 2) * 3
9
Prelude> ((1 + 2) * 3) + 100
109

--2.4

Prelude> (1 + 2) * 3
9
Prelude> (4 + 5) * 3
27
Prelude> (10 + 5) * 3
45

Prelude> let triple x = x * 3
triple x = x * 3

Prelude> triple 2
6

--2.5

1
"Icarus"

1 + 1
2 * 3 + 1

triple 2
triple 2
2 * 3
6

(\f -> (1, 2 + f)) 2
(1, 2 + 2)

--2.6

Prelude> id 1
1

Prelude > 1 + 1
2

Prelude> 100 + 100
200
Prelude> 768395 * 21356345
16410108716275
Prelude> 123123 / 123
1001.1
Prelude> 476 - 36
440
Prelude> 10 / 4
2.5

Prelude> 10 'div' 4
2
Prelude> div 10 4
2

Prelude (+) 100 100
200
Prelude> (*) 768395 21356345
16410108716275
Prelude> (/) 123123 123
1001.0

:info (*)
infixl 7 *

:info (+) (-)
infixl 6 +
infixl 6 -

2 * 3 * 4
(2 * 3) * 4

Prelude> info (^)
infixr 8 ^

Prelude> 2 ^ 3 ^ 4
2417851639229258349412352
Prelude> 2 ^ (3 ^ 4)
2417851639229258349412352
Prelude> (2 ^ 3) ^ 4
4096

2 + 3 * 4
(2 + 3) * 4

--2.7

Prelude> let y = 10
Prelude> let x = 10 * 5 + y
Prelude> let myResult = x * 5

Prelude> x
60
Prelude> y
10
Prelude> myResult
300

module Learn where
x = 10 * 5 + y
myResult = x * 5
y = 10

let
  x = 3
  y = 4
--or
let x = 3
    y = 4

--incorrect
let x = 3
 y = 4
--or
let
 x = 3
  y = 4

foo x =
    let y = x * 2
        z = x ^ 2
    in 2 * y * z

--incorrect
module Learn where
x = 10
* 5 + y
myResult = x * 5
y = 10

x = 10 * 5 + y
x = 10
 * 5 + y
--or
x = 10
    * 5 + y

--incorrect
module Learn where
 x = 10 * 5 + y
myResult = x * 5
y = 10

module Learn where
 x = 10 * 5 + y
 myResult = x * 5
 y = 10

--incorrect
-learn.hs
module Learn where
x = 10 * 5 + y
myResult = x * 5
y = 10

Prelude> :load learn.hs
[1 of 1] Compiling Learn
Ok, modules loaded: Learn.
Prelude> x
60
Prelude> y
10
Prelude> myResult
300

--2.8

Prelude> 1 + 1
2
Prelude> 1 - 1
0
Prelude> 1 * 1
1
Prelude> 1 / 1
1.0
Prelude> div 1 1
1
Prelude> mod 1 1
0
Prelude> quot 1 1
1
Prelude> rem 1 1
0

-- rounds down
Prelude> div 20 (-6)
-4

-- rounds toward zero
Prelude> quot 20 (-6)
-3

(quot x y)*y + (rem x y) == x
(div x y)*y + (mod x y) == x

(quot x y)*y + (rem x y)
Given x is 10 and y is (-4)
(quot 10 (-4))*(-4) + (rem 10(-4))
quot 10 (-4) == (-2) and rem 10 (-4) == 2
(-2)*(-4) + (2) == 10
10 == x == yeppers.

(div x y)*y + (mod x y)
given x is 10 and y is (-4)
(div 10 (-4))*(-4) + (mod 10 (-4))
div 10 (-4) == (-3) and mod 10 (-4) == -2
(-3)*(-4) + (-2) == 10
10 == y == yeppers.

Prelude> mod 15 12
3
Prelude> rem 15 12
3
Prelude> mod 21 12
9
Prelude> rem 21 12
9
Prelude> mod 3 12
3
Prelude> rem 3 12
3

Prelude> mod (1 + 23) 7
3

Prelude> mod (6 + 5) 7
4
Prelude> rem (1 + 23) 7
3

Prelude> mod (3 - 12) 7
5
Prelude> rem (3 - 12) 7
-2

Prelude> (-5) 'mod' 2
1
Prelude> 5 'mod'  (-2)
-1
Prelude> (-5) 'mod' (-2)
-1
--but
Prelude> (-5) 'rem' 2
-1
Prelude> 5 'rem' (-2)
1
Prelude> (-5) 'rem' (-2)
-1

Prelude> -1000
-1000

Prelude 1000 + -9

Prelude> 1000 + (-9)
991

Prelude> 2000 + (-1234)
766

Prelude> 2000 + (negate 1234)
766
Prelude> 2000 - 1234
766

--2.9

Prelude> :info (^)
(^) :: (Num a, Integral b) => a -> b -> a
infixr 8 ^

Prelude> :info (*)
class Num a where
  (*) :: a -> a -> a
infixl 7 *

Prelude> :info (+)
class Num a where
  (+) :: a -> a -> a
infixl 6 +

Prelude> :info (-)
class Num a where
  (-) :: a -> a -> a
infixl 6 -

Prelude> :info ($)
($) :: (a -> b) -> a -> b
infixr 0 $

f $ a = f a

Prelude> (2^) (2 + 2)
16
Prelude> (2^) $ 2 + 2
16
Prelude> (2^) 2 + 2
6

Prelude> (2^) $ (+2) $ 3*2
256
--does not work
Prelude> (2^) $ 2 + 2 $ (*30)

f $ a = f a
(2^) $ 2 + 2 $ (*30)
2 + 2 $ (*30)
(2 + 2)(*30)
4 (*30)

(2^) $ (*30) $ 2 + 2
(2^) $ (*30) $ 2 + 2
(2^) $ (*30) 4
(2^) $ 120
(2^) 120
1329227995784915872903807060280344576

Prelude> 1 + 2
3
Prelude> (+) 1 2
3
Prelude> (+1) 2
3

Prelude> (1/) 2
0.5
Prelude> (/1) 2
2.0
Prelude> 2 - 1
1
Prelude> (-) 2 1
1
--doesn't work
Prelude> (-2) 1

Prelude> let x = 5
Prelude> let y = (1 -)
Prelude> y x
-4
Prelude> (subtract 2) 3
1

--2.10

module FuncitonWithWhere where
printInc n = print plusTwo
  where plusTwo = n + 2

Prelude> :l FunctionWithWhere.hs
[1 of 1] Compiling FunctionWithWhere ...
Ok, modules loaded: FunctionWithWhere.
Prelude> printInc 1
3
Prelude>

module FunctionWithLet where
printInc2 n = let plusTwo = n + 2
              in print plusTwo

Prelude> :load FunctionWithLet.hs
[1 of 1] Compiling FunctionWithLet ...
Ok, modules loaded: FunctionWithLet.
Prelude> printInc2 3
5

Prelude> :load FunctionWithWhere.hs
[1 of 1] Compiling FunctionWithWhere ...
Ok, modules loaded: FunctionWithWhere.
Prelude> printInc 1
3
Prelude> :load FunctionWithLet.hs
[1 of 1] Compiling FunctionWithlet ...
Ok, modules loaded: FunctionWithLet.
Prelude> printInc2 10
12
Prelude> printInc 10

<interactive>:6:1:
    Not in scope: 'printInc'
    Perhaps you meant 'printInc2' (line 4)

let x = 5; y = 6 in x * y
--or
mult1      = x * y
   where x = 5
         y = 6

Prelude> :l practice.hs
[1 of 1] Compiling Main
Ok, modules loaded: Main.
*main> mult1
30
