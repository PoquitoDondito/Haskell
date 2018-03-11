--As in previous chatpers, you wilol gain more by working out the answer before
--you check what GHCi tells you, but be sure to use your REPL to check your
--answers to the following exercises. Also, you will need to have the awesome,
--alsoAwesome, and allAwesome code from above in scope for this REPL session.
--For convenience of reference, here are those values again:

awesome = ["Papuchon", "curry", ":)"]
alsoAwesome = ["Quake", "The Simons"]
allAwesome = [awesome, alsoAwesome]

--length is a function that takes a list and returns a result that tells how
--many items are in the list

--1.
--Given the defintion of length above, what would the type signature be? How
--many arguments, of what type does it take? What is the type of the result it
--evaluates to?
--Answer:
Type signature is length
It takes all elements in a list of a uniform type
It evaluates to an integer

--2.
--What are the results of the following expressions?

--a)
-- length [1, 2, 3, 4, 5]
--Answer:
5

--b)
-- length [(1, 2), (2, 3), (3, 4)]
--Answer:
3

--c)
--length allAwesome
--Answer:
2

--d)
--length (concat allAwesome)
--Answer:
5

--3.
--Given what we know about numeric types and the type signature of length, look
--at these two expressions. One works and one returns an error. Determine which
--will return an error and why. (n.b., you will find Foldable t => t a
--representing [a], as with concat in the previous chapter. Again, consider
--Foldable t to represent a list here, even though list is only one of the
--possible types.)

--Prelude> 6 / 3
-- and
--Prelude> 6 / length [1, 2, 3]

--Answer:
/ requires that the inputs be fractional integers, however, length cannot return
fracitonal integers

--4.
--How can you fix the broken code from the preceding exercise using a different
--division function/operator?
--Answer:
Using the prefix division function div instead of (/)

--5.
--What is the type of the expression 2 + 3 == 5? What would we expect as a
--result?
--Answer:
Expression is a Boolean and would result in True

--6.
--What is the type and expected result value of the following:
--Prelude> let x = 5
--Prelude> x + 3 == 5
--Answer:
Another Boolean, the expected result is False

--7.
--Below are some bits of code. Which will work? Why or why not? If they will
--work, what value would these reduce to?

--Prelude> length allAwesome == 2
--Answer:
This will work since length returns an integer which can function as any integer
would, and can even enter any Boolean expression. Should return

--Prelude> length [1, 'a', 3, 'b']
--Answer:
This will not work since 1 is type of Num while 'a' is type of char, and length
only evaluates a list which is composed of one type.

--Prelude> length allAwesome + length awesome
--Answer:
This will work since length returns an integer which can be added with other
integers.

--Prelude> (8 == 8) && ('b' < 'a')
--Answer:
This will compile since (8 == 8) returns true and ('b' < 'a') returns false. The
result will be false.

--Prelude> (8 == 8) && 9
--Answer:
This will not work since 9 is not a Boolean and && requires two Booleans for
input.

--8.
--Write a function that tells you whether or not a given String (or list) is a
--palindrome. Here you'll want to use a function called 'reverse,' a predefined
--function that does just what it sounds like.
reverse :: [a] -> [a]
reverse "blah"
"halb"

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = undefined
--Answer:
isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = x == (reverse x)

--9.
--Write a function to return the absolute value of a number using if-then-else
myAbs :: Integer -> Integer
myAbs = undefined
--Answer:
myAbs :: Integer -> Integer
myAbs x = if (x <= 0)
          then (-x)
          else (x)

--10.
--Fill in the definition of the following function, using fst and snd
f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f = undefined
--Answer:
f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f x y = let
         b = snd x
         d = snd y
         a = fst x
         c = fst y
         in ((b, d), (a, c))

--Correcting syntax
--In the following examples, you'll be shown syntactically incorrect code. Type
it in and try to correct it in your text editor, validating it with GHC or GHCi

--1. --
--Here we want a function that adds 1 to the length of a string argument and
--returns that result.
x = (+)
F xs = w 'x' 1
     where w = length xs
--Answer:
x = (+)
f xs = w `x` 1
  where w = length xs

--2.
--This is supposed to be the identity function, id.
\ x = x
--Answer:
\x = x

--3.
--When fixed, this function will return 1 from the value [1, 2, 3]. Hint: you
--may need to refer back to the section about variables conventions in "Hello
--Haskell" to refresh your memory of this notation.
\x : xs -> x
--Answer:
\(x:xs) -> x

--4.
--When fixed, this function will return 1 from the value (1, 2)
f (a b) = A
--Answer:
f (a, b) = a

--Match the function names to their types

--1.
--Which of the following types is the type of show?
--a)
--show a => a -> String
--b)
--Show a -> a -> String
--c)
--Show a => a -> String
--Answer:
C

--2.
--Which of the following types is the type of (==)?
--a)
--a -> a -> Bool
--b)
--Eq a => a -> a -> Bool
--c)
--Eq a -> a -> a -> Bool
--d)
--Eq a => A -> Bool
--Answer:
B

--3.
--Which of the following types is the type of fst?
--a)
--(a, b) -> a
--b)
--b -> a
--c)
--(a, b) -> b
--Answer:
A

--4.
--Which of the following types is the type of (+)?
--a)
--(+) :: Num a -> a -> a -> Bool
--b)
--(+) :: Num a => a -> a -> Bool
--c)
--(+) :: num a => a -> a -> a
--d)
--(+) :: Num a => a -> a -> a
--e)
--(+) :: a -> a -> a
--Answer:
D
